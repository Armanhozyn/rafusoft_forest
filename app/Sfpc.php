<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Sfpc extends Model
{
    protected $fillable = [
        'range_id',
        'name',
        'name_english',
        'office_head_designation'
    ];
}
