<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Range extends Model
{
    protected $fillable = [
        "district_id",
        "name",
        "name_english",
        "office_head_designation"
    ];
}
