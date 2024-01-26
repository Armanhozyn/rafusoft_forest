<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GardenInThana extends Model
{
    protected $tables = "garden_in_thanas";
    protected $fillable = [ 'garden_id','thana_id'];
}
