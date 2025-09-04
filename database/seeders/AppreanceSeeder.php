<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AppreanceSeeder extends Seeder
{
    public function run(): void
    {
        DB::table('tbl_appreance')->insert([
            'appreance_id'      => 2,
            'user_id'           => '1',
            'appreance_layout'  => 'sidebar-mini',
            'appreance_theme'   => 'light-mode',
            'appreance_menu'    => 'light-menu',
            'appreance_header'  => 'header-light',
            'appreance_sidestyle' => 'default-menu',
            'created_at'        => '2022-11-22 09:45:47',
            'updated_at'        => '2022-11-24 13:00:20',
        ]);
    }
}
