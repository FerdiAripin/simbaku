<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BarangMasukSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('tbl_barangmasuk')->insert([
            [
                'bm_id'        => 3,
                'bm_kode'      => 'BM-1754622364840',
                'barang_kode'  => 'BRG-1754402351047',
                'bm_tanggal'   => '2025-08-08',
                'bm_jumlah'    => '10',
                'bm_keterangan'=> 'test',
                'created_at'   => '2025-08-08 03:06:38',
                'updated_at'   => '2025-08-13 08:33:26',
            ],
            [
                'bm_id'        => 4,
                'bm_kode'      => 'BM-1755073574072',
                'barang_kode'  => 'BRG-1754402351047',
                'bm_tanggal'   => '2025-08-13',
                'bm_jumlah'    => '100',
                'bm_keterangan'=> 'test',
                'created_at'   => '2025-08-13 08:26:32',
                'updated_at'   => '2025-08-13 08:26:32',
            ],
            [
                'bm_id'        => 5,
                'bm_kode'      => 'BM-1755549307387',
                'barang_kode'  => 'BRG-1754402351047',
                'bm_tanggal'   => '2025-08-19',
                'bm_jumlah'    => '100',
                'bm_keterangan'=> 'test',
                'created_at'   => '2025-08-18 20:35:30',
                'updated_at'   => '2025-08-18 20:35:30',
            ],
        ]);
    }
}
