<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GardenInUnion extends Model
{

    protected $tables = "garden_in_unions";
    protected $fillable = [ 'garden_id','union_parishad_id'];
}
