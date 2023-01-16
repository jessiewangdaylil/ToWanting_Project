<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        DB::statement('SET FOREIGN_KEY_CHECKS=0;');
        $this->call([
            //MySettingSeeder::class,
            CgySeeder::class,
            TagSeeder::class,
            // UserSeeder::class,
            ArticleSeeder::class,
            // CommentSeeder::class,
            // ElementSeeder::class,
            //PortfolioSeeder::class,
            //ContactSeeder::class,
            ItemSeeder::class,
            // OrderSeeder::class,
            //MyDataTypeSeeder::class,
            //MyDataRowSeeder::class,
            // MyMenuSeeder::class,
            //MyMenuItemSeeder::class,
            //MyPermissionSeeder::class,
            //MyRoleSeeder::class,
            //MyPermissionRoleSeeder::class,
            //MyTranslationSeeder::class
        ]);
        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
    }
}
