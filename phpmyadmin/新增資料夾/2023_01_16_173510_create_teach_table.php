<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::create('teach', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->unsigned()->index(); //商品分類
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('name', 50); //導師姓名
            // $table->bigInteger('cgy_id')->unsigned()->index(); //商品分類
            // $table->foreign('cgy_id')->references('id')->on('cgies')->onDelete('cascade');
            $table->string('chars', 300)->nullable(); //老師特色
            $table->string('pics', 255)->nullable(); //照片
            $table->string('exp', 1000)->nullable(); //經歷
            $table->integer('sort')->default(0);
            $table->integer('acc'); //開課累積數
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teach');
    }
};