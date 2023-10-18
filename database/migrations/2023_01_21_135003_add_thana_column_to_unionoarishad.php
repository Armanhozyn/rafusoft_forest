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
        Schema::table('union_parishads', function (Blueprint $table) {
            $table->foreignId('thana_id')->after('name');
            $table->foreignId('district_id')->after('thana_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('union_parishads', function (Blueprint $table) {
            $table->dropColumn('thana_id');
            $table->dropColumn('district_id');
        });
    }
};
