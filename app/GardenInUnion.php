<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GardenInUnion extends Model
{
    public function union()
    {
        return $this->hasOne(UnionParishad::class, 'id', 'union_parishad_id');
    }
}
