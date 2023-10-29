<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Country_division extends Model
{
    protected $table = "country_divisions";

    protected $fillable = ['name'];
}
