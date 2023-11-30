<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGardenBikritosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('garden_bikritos', function (Blueprint $table) {
            $table->id();
            $table->integer('garden_id');
            $table->integer('bit_id')->nullable();
            $table->integer('sfpc_id')->nullable();
            $table->string('bikrito_bagan_shon');
            $table->string('dorpotro_biggopti_no');
            $table->date('bikrito_date');
            $table->integer('total_lot_count');
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
        Schema::dropIfExists('garden_bikritos');
    }
}
