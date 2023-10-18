<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTreeSpeciesInformationTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tree_species_information', function (Blueprint $table) {
            $table->id();
            $table->foreignId('wood_lot_id');
            $table->string('species');
            $table->integer('species_count');
            $table->decimal('species_amount', 10, 2, true);
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
        Schema::dropIfExists('tree_species_information');
    }
}
