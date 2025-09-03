<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Admin\BarangkeluarModel;
use App\Models\Admin\WebModel;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Yajra\DataTables\DataTables;
use PDF;

class LapBarangKeluarController extends Controller
{
    public function index()
    {
        $data["title"] = "Laporan Keluar";
        return view('Admin.Laporan.BarangKeluar.index', $data);
    }

    public function print(Request $request)
    {
        $query = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode');

        if ($request->tglawal) {
            $query->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir]);
        }

        if ($request->jenis) {
            $query->where('tbl_barang.barang_type', $request->jenis);
        }

        $data['data'] = $query->orderBy('bk_id', 'DESC')->get();

        $data["title"] = "Print Barang Keluar";
        $data['web'] = WebModel::first();
        $data['tglawal'] = $request->tglawal;
        $data['tglakhir'] = $request->tglakhir;
        return view('Admin.Laporan.BarangKeluar.print', $data);
    }

    public function pdf(Request $request)
    {
        $query = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode');

        if ($request->tglawal) {
            $query->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir]);
        }

        if ($request->jenis) {
            $query->where('tbl_barang.barang_type', $request->jenis);
        }

        $data['data'] = $query->orderBy('bk_id', 'DESC')->get();

        $data["title"] = "PDF Barang Keluar";
        $data['web'] = WebModel::first();
        $data['tglawal'] = $request->tglawal;
        $data['tglakhir'] = $request->tglakhir;
        try {
            $pdf = PDF::loadView('Admin.Laporan.BarangKeluar.pdf', $data);
        } catch (\Exception $e) {
            return back()->with('error', 'Failed to generate PDF: ' . $e->getMessage());
        }

        if ($request->tglawal) {
            return $pdf->download('lap-bk-' . $request->tglawal . '-' . $request->tglakhir . '.pdf');
        } else {
            return $pdf->download('lap-bk-semua-tanggal.pdf');
        }
    }

    public function show(Request $request)
    {
        if ($request->ajax()) {
            $query = BarangkeluarModel::leftJoin('tbl_barang', 'tbl_barang.barang_kode', '=', 'tbl_barangkeluar.barang_kode');

            if ($request->tglawal != '') {
                $query->whereBetween('bk_tanggal', [$request->tglawal, $request->tglakhir]);
            }

            if ($request->jenis) {
                $query->where('tbl_barang.barang_type', $request->jenis);
            }

            $data = $query->orderBy('bk_id', 'DESC')->get();
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('tgl', function ($row) {
                    $tgl = $row->bk_tanggal == '' ? '-' : Carbon::parse($row->bk_tanggal)->translatedFormat('d F Y');

                    return $tgl;
                })
                ->addColumn('keterangan', function ($row) {
                    $keterangan = $row->bk_keterangan == '' ? '-' : $row->bk_keterangan;

                    return $keterangan;
                })
                ->addColumn('barang', function ($row) {
                    $barang = $row->barang_id == '' ? '-' : $row->barang_nama;

                    return $barang;
                })
                ->rawColumns(['tgl', 'keterangan', 'barang'])->make(true);
        }
    }
}
