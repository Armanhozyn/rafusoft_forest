<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateWoodLotPaymentHistoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('wood_lot_payment_histories', function (Blueprint $table) {
            $table->id();
            $table->integer('wood_lot_id');
            $table->string('money_collection_slip_no');
            $table->date('money_collection_date');
            $table->string('money_deposit_slip_no');
            $table->decimal('money_deposit');
            $table->integer('created_by');
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
        Schema::dropIfExists('wood_lot_payment_histories');
    }
}
