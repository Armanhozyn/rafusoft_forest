<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BitInThana extends Model
{
    protected $tables = "bit_in_thanas";
    protected $fillable = [ 'bit_id','thana_id'];
}
