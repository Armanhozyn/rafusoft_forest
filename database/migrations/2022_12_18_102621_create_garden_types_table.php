<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGardenTypesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('garden_types', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->decimal('forest_revenew',10,2);
            $table->decimal('tff_profit_share',10,2);
            $table->decimal('beneficiarys_profit_share',10,2);
            $table->decimal('union_parisadh_profit_share',10,2);
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
        Schema::dropIfExists('garden_types');
    }
}
