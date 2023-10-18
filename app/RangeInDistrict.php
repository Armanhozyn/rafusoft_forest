<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RangeInDistrict extends Model
{
    //
    public function district()
    {
        return $this->hasOne(District::class, 'id', 'district_id');
    }
}
