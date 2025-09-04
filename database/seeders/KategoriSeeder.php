<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class KategoriSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('tbl_kategori')->insert([
            'kategori_id'   => 1,
            'kategori_nama' => 'Kategori 1',
            'kategori_slug' => '',
            'kategori_ket'  => 'lorem ipsum',
            'created_at'    => '2025-08-04 13:39:56',
            'updated_at'    => '2025-08-04 13:39:56',
        ]);
    }
}
