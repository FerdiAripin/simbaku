<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MigrationsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('migrations')->insert([
            ['id' => 1, 'migration' => '2019_08_19_000000_create_failed_jobs_table', 'batch' => 1],
            ['id' => 2, 'migration' => '2019_12_14_000001_create_personal_access_tokens_table', 'batch' => 1],
            ['id' => 3, 'migration' => '2022_10_31_061811_create_menu_table', 'batch' => 1],
            ['id' => 4, 'migration' => '2022_11_01_041110_create_table_role', 'batch' => 1],
            ['id' => 5, 'migration' => '2022_11_01_083314_create_table_user', 'batch' => 1],
            ['id' => 6, 'migration' => '2022_11_03_023905_create_table_submenu', 'batch' => 1],
            ['id' => 7, 'migration' => '2022_11_03_064417_create_tbl_akses', 'batch' => 1],
            ['id' => 8, 'migration' => '2022_11_08_024215_create_tbl_web', 'batch' => 1],
            ['id' => 9, 'migration' => '2022_11_15_131148_create_tbl_jenisbarang', 'batch' => 2],
            ['id' => 10, 'migration' => '2022_11_15_173700_create_tbl_satuan', 'batch' => 3],
            ['id' => 11, 'migration' => '2022_11_15_180434_create_tbl_merk', 'batch' => 4],
            ['id' => 12, 'migration' => '2022_11_16_120018_create_tbl_appreance', 'batch' => 5],
            ['id' => 13, 'migration' => '2022_11_25_141731_create_tbl_barang', 'batch' => 6],
            ['id' => 14, 'migration' => '2022_11_26_011349_create_tbl_customer', 'batch' => 7],
            ['id' => 16, 'migration' => '2022_11_28_151108_create_tbl_barangmasuk', 'batch' => 8],
            ['id' => 17, 'migration' => '2022_11_30_115904_create_tbl_barangkeluar', 'batch' => 9],
        ]);
    }
}
