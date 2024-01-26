<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BitInUnion extends Model
{
    protected $tables = "bit_in_unions";
    protected $fillable = [ 'bit_id','union_id'];
}
