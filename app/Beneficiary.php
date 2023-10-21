<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Beneficiary extends Model
{
    protected $fillable = [
        "garden_id",
        "voter_id",
        "mobile",
        "details"
    ];
}
