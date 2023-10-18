<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWoodLotsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wood_lots', function (Blueprint $table) {
            $table->id();
            $table->foreignId('garden_id');
            $table->date('tendar_date');
            $table->string('tendar_no');
            $table->string('lot_no');
            $table->string('lot_buyer_name');
            $table->decimal('sold_amount',10,2);
            $table->string('money_collection_slip_no');
            $table->date('money_collection_date');
            $table->string('money_deposit_slip_no');
            $table->decimal('money_deposit', 10,2);
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('wood_lots');
    }
}
