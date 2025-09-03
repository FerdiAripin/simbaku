<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\AksesModel;
use App\Models\Admin\BarangkeluarModel;
use App\Models\Admin\BarangmasukModel;
use App\Models\Admin\BarangModel;
use App\Models\Admin\KategoriModel;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use Yajra\DataTables\Facades\DataTables;

class ProdukLamaController extends Controller
{
    public function index()
    {
        $data["title"] = "Produk Lama";
        $data["hakTambah"] = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Produk Lama', 'tbl_akses.akses_type' => 'create'))->count();
        $data["kategori"] =  KategoriModel::orderBy('kategori_id', 'DESC')->get();
        return view('Admin.ProdukLama.index', $data);
    }

    public function detail($id)
    {
        $data["title"] = "Produk Lama";
        $data["barang"] = BarangModel::where('barang_type', '=', 'lama')
            ->leftJoin('tbl_kategori', 'tbl_kategori.kategori_id', '=', 'tbl_barang.kategori_id')
            ->where('tbl_barang.barang_id', '=', $id)
            ->first();

        // Get combined barang masuk and keluar data
        $barangMasuk = BarangmasukModel::where('barang_kode', $data["barang"]->barang_kode)
            ->select(
                'bm_tanggal as tanggal',
                'bm_jumlah as jumlah',
                'bm_keterangan',
                DB::raw("'-' as tujuan"),
                'barang_kode',
                DB::raw("'masuk' as type")
            );

        $barangKeluar = BarangkeluarModel::where('barang_kode', $data["barang"]->barang_kode)
            ->select(
                'bk_tanggal as tanggal',
                'bk_jumlah as jumlah',
                'bk_keterangan',
                DB::raw("'-' as tujuan"),
                'barang_kode',
                DB::raw("'keluar' as type")
            );

        $data["barang_history"] = $barangMasuk->union($barangKeluar)
            ->orderBy('tanggal', 'DESC')
            ->get();

        return view('Admin.ProdukBaru.detail', $data);
    }

    public function getbarang($id)
    {
        $data = BarangModel::where('barang_type', '=', 'lama')->leftJoin('tbl_kategori', 'tbl_kategori.kategori_id', '=', 'tbl_barang.kategori_id')->where('tbl_barang.barang_kode', '=', $id)->get();
        return json_encode($data);
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {

            $data = BarangModel::where('barang_type', '=', 'lama')->leftJoin('tbl_kategori', 'tbl_kategori.kategori_id', '=', 'tbl_barang.kategori_id')->orderBy('barang_id', 'DESC')->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('img', function ($row) {
                    $array = array(
                        "barang_gambar" => $row->barang_gambar,
                    );
                    if ($row->barang_gambar == "image.png") {
                        $img = '<a data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Gmodaldemo8" onclick=gambar(' . json_encode($array) . ')><span class="avatar avatar-lg cover-image" style="background: url(&quot;' . url('/assets/default/barang') . '/' . $row->barang_gambar . '&quot;) center center;"></span></a>';
                    } else {
                        $img = '<a data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Gmodaldemo8" onclick=gambar(' . json_encode($array) . ')><span class="avatar avatar-lg cover-image" style="background: url(&quot;' . asset('storage/barang/' . $row->barang_gambar) . '&quot;) center center;"></span></a>';
                    }

                    return $img;
                })
                ->addColumn('kategori', function ($row) {
                    $kategori = $row->kategori_id == '' ? '-' : $row->kategori_nama;

                    return $kategori;
                })
                ->addColumn('totalstok', function ($row) use ($request) {
                    if ($request->tglawal == '') {
                        $jmlmasuk = BarangmasukModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangmasuk.barang_kode')->where('tbl_barangmasuk.barang_kode', '=', $row->barang_kode)->sum('tbl_barangmasuk.bm_jumlah');
                    } else {
                        $jmlmasuk = BarangmasukModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangmasuk.barang_kode')->whereBetween('bm_tanggal', [$request->tglawal, $request->tglakhir])->where('tbl_barangmasuk.barang_kode', '=', $row->barang_kode)->sum('tbl_barangmasuk.bm_jumlah');
                    }


                    if ($request->tglawal) {
                        $jmlkeluar = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir])->where('tbl_barangkeluar.barang_kode', '=', $row->barang_kode)->sum('tbl_barangkeluar.bk_jumlah');
                    } else {
                        $jmlkeluar = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->where('tbl_barangkeluar.barang_kode', '=', $row->barang_kode)->sum('tbl_barangkeluar.bk_jumlah');
                    }

                    $totalstok = $row->barang_stok + ($jmlmasuk - $jmlkeluar);
                    if ($totalstok == 0) {
                        $result = '<span class="">' . $totalstok . '</span>';
                    } else if ($totalstok > 0) {
                        $result = '<span class="text-success">' . $totalstok . '</span>';
                    } else {
                        $result = '<span class="text-danger">' . $totalstok . '</span>';
                    }


                    return $result;
                })
                ->addColumn('action', function ($row) {
                    $array = array(
                        "barang_id" => $row->barang_id,
                        "kategori_id" => $row->kategori_id,
                        "barang_id" => $row->barang_id,
                        "barang_kode" => $row->barang_kode,
                        "barang_nama" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->barang_nama)),
                        "barang_stok" => $row->barang_stok,
                        "barang_gambar" => $row->barang_gambar
                    );
                    $button = '';
                    $hakEdit = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Produk Lama', 'tbl_akses.akses_type' => 'update'))->count();
                    $hakDelete = AksesModel::leftJoin('tbl_submenu', 'tbl_submenu.submenu_id', '=', 'tbl_akses.submenu_id')->where(array('tbl_akses.role_id' => Session::get('user')->role_id, 'tbl_submenu.submenu_judul' => 'Produk Lama', 'tbl_akses.akses_type' => 'delete'))->count();
                    $button = '<div class="g-2">';

                    $button .= '<a class="btn modal-effect text-primary btn-sm" href="' . url('/admin/produk_lama/detail/' . $row->barang_id) . '"><span class="fe fe-eye text-primary fs-14"></span></a>';

                    if ($hakEdit > 0) {
                        $button .= '<a class="btn modal-effect text-primary btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Umodaldemo8" data-bs-toggle="tooltip" data-bs-original-title="Edit" onclick=update(' . json_encode($array) . ')><span class="fe fe-edit text-success fs-14"></span></a>';
                    }

                    if ($hakDelete > 0) {
                        $button .= '<a class="btn modal-effect text-danger btn-sm" data-bs-effect="effect-super-scaled" data-bs-toggle="modal" href="#Hmodaldemo8" onclick=hapus(' . json_encode($array) . ')><span class="fe fe-trash-2 fs-14"></span></a>';
                    }

                    $button .= '</div>';

                    if ($hakEdit == 0 && $hakDelete == 0) {
                        $button = '-';
                    }

                    return $button;
                })
                ->rawColumns(['action', 'img', 'kategori', 'satuan', 'merk', 'currency', 'totalstok'])->make(true);
        }
    }

    public function listbarang(Request $request)
    {
        if ($request->ajax()) {
            $data = BarangModel::where('barang_type', '=', 'lama')->leftJoin('tbl_kategori', 'tbl_kategori.kategori_id', '=', 'tbl_barang.kategori_id')->orderBy('barang_id', 'DESC')->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('img', function ($row) {
                    if ($row->barang_gambar == "image.png") {
                        $img = '<span class="avatar avatar-lg cover-image" style="background: url(&quot;' . url('/assets/default/barang') . '/' . $row->barang_gambar . '&quot;) center center;"></span>';
                    } else {
                        $img = '<span class="avatar avatar-lg cover-image" style="background: url(&quot;' . asset('storage/barang/' . $row->barang_gambar) . '&quot;) center center;"></span>';
                    }

                    return $img;
                })
                ->addColumn('kategori', function ($row) {
                    $kategori = $row->kategori_id == '' ? '-' : $row->kategori_nama;

                    return $kategori;
                })
                ->addColumn('totalstok', function ($row) use ($request) {
                    if ($request->tglawal == '') {
                        $jmlmasuk = BarangmasukModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangmasuk.barang_kode')->where('tbl_barangmasuk.barang_kode', '=', $row->barang_kode)->sum('tbl_barangmasuk.bm_jumlah');
                    } else {
                        $jmlmasuk = BarangmasukModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangmasuk.barang_kode')->whereBetween('bm_tanggal', [$request->tglawal, $request->tglakhir])->where('tbl_barangmasuk.barang_kode', '=', $row->barang_kode)->sum('tbl_barangmasuk.bm_jumlah');
                    }


                    if ($request->tglawal) {
                        $jmlkeluar = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir])->where('tbl_barangkeluar.barang_kode', '=', $row->barang_kode)->sum('tbl_barangkeluar.bk_jumlah');
                    } else {
                        $jmlkeluar = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode')->where('tbl_barangkeluar.barang_kode', '=', $row->barang_kode)->sum('tbl_barangkeluar.bk_jumlah');
                    }

                    $totalstok = $row->barang_stok + ($jmlmasuk - $jmlkeluar);
                    if ($totalstok == 0) {
                        $result = '<span class="">' . $totalstok . '</span>';
                    } else if ($totalstok > 0) {
                        $result = '<span class="text-success">' . $totalstok . '</span>';
                    } else {
                        $result = '<span class="text-danger">' . $totalstok . '</span>';
                    }


                    return $result;
                })
                ->addColumn('action', function ($row) use ($request) {
                    $array = array(
                        "barang_kode" => $row->barang_kode,
                        "barang_nama" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->barang_nama)),
                        "satuan_nama" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->satuan_nama)),
                        "kategori_nama" => trim(preg_replace('/[^A-Za-z0-9-]+/', '_', $row->kategori_nama)),
                    );
                    $button = '';
                    if ($request->get('param') == 'tambah') {
                        $button .= '
                        <div class="g-2">
                            <a class="btn btn-primary btn-sm" href="javascript:void(0)" onclick=pilihBarang(' . json_encode($array) . ')>Pilih</a>
                        </div>
                        ';
                    } else {
                        $button .= '
                    <div class="g-2">
                        <a class="btn btn-success btn-sm" href="javascript:void(0)" onclick=pilihBarangU(' . json_encode($array) . ')>Pilih</a>
                    </div>
                    ';
                    }

                    return $button;
                })
                ->rawColumns(['action', 'img', 'kategori', 'satuan', 'merk', 'totalstok'])->make(true);
        }
    }

    public function proses_tambah(Request $request)
    {
        $img = "";
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->nama)));

        //upload image
        if ($request->file('foto') == null) {
            $img = "image.png";
        } else {
            $image = $request->file('foto');
            $image->storeAs('public/barang/', $image->hashName());
            $img = $image->hashName();
        }


        //create
        BarangModel::create([
            'barang_gambar' => $img,
            'kategori_id' => $request->kategori,
            'barang_kode' => $request->kode,
            'barang_nama' => $request->nama,
            'barang_slug' => $slug,
            'barang_type' => 'lama',
            'barang_stok' => $request->stok ?? 0,

        ]);

        return response()->json(['success' => 'Berhasil']);
    }

    public function proses_ubah(Request $request, BarangModel $barang)
    {

        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->nama)));

        //check if image is uploaded
        if ($request->hasFile('foto')) {

            //upload new image
            $image = $request->file('foto');
            $image->storeAs('public/barang', $image->hashName());

            //delete old image
            Storage::delete('public/barang/' . $barang->barang_gambar);

            //update data with new image
            $barang->update([
                'barang_gambar'  => $image->hashName(),
                'kategori_id' => $request->kategori,
                'barang_kode' => $request->kode,
                'barang_nama' => $request->nama,
                'barang_slug' => $slug,
                'barang_stok' => $request->stok,
            ]);
        } else {
            //update data without image
            $barang->update([
                'kategori_id' => $request->kategori,
                'barang_kode' => $request->kode,
                'barang_nama' => $request->nama,
                'barang_slug' => $slug,
                'barang_stok' => $request->stok,
            ]);
        }

        return response()->json(['success' => 'Berhasil']);
    }


    public function proses_hapus(Request $request, BarangModel $barang)
    {
        //delete image
        Storage::delete('public/barang/' . $barang->barang_gambar);

        //delete
        $barang->delete();

        return response()->json(['success' => 'Berhasil']);
    }
}
