<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bit extends Model
{
    protected $fillable = [
        'range_id',
        'name',
        'name_english',
        'office_head_designation'
    ];
}
