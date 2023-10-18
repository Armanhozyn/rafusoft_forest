<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GardenInformation extends Model
{
    protected $fillable = ['district_id', 'range_id', 'thana_id', 'union_parishad_id', 'forest_type_id', 'details', 'garden_area_hectare', 'garden_area_km', 'status', 'created_at'];

    public function garden_type()
    {
        return $this->hasOne(ForestType::class, 'id', 'forest_type_id');
    }

    public function range()
    {
        return $this->hasOne(User::class, 'id', 'range_id');
    }

    public function thana()
    {
        return $this->hasOne(Thana::class, 'id', 'thana_id');
    }

    public function union()
    {

        return $this->hasMany(GardenInUnion::class, 'garden_information_id', 'id');
    }

    public function district()
    {
        return $this->hasOne(District::class, 'id', 'district_id');
    }
}
