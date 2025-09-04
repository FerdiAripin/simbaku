<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class WebSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('tbl_web')->insert([
            'web_id'       => 1,
            'web_nama'     => 'SIMBAKU',
            'web_logo'     => 'default.png',
            'web_deskripsi'=> 'Mengelola ATM & Tabungan',
            'created_at'   => '2022-11-15 10:51:04',
            'updated_at'   => '2022-11-22 09:41:39',
        ]);
    }
}
