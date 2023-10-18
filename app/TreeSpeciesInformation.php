<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TreeSpeciesInformation extends Model
{
    public function wood_lot()
    {
        return $this->belongsTo(WoodLot::class,'wood_lot_id','id');
    }
}
