<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Garden extends Model
{
    public $timestamps = true;
    protected $fillable = ['agreement_attachment', 'garden_information_id', 'nursery_expense', 'creation_cost', 'project_id', 'creation_year', 'rotation', 'cut_year', 'harvested_amount', 'land_owner_name', 'beneficiary_male', 'beneficiary_female', 'location', 'union_parishad_id', 'expiration_year', 'garden_area', 'contract_attachment', 'approved_by', 'created_by', 'bit_id', 'sfpc_id', 'forest_type_id', 'forest_revenew', 'tff_profit_share', 'beneficiarys_profit_share', 'union_parisadh_profit_share','forest_type_id','range_id','garden_size','district_id'];
    public function garden_type_info()
    {
        return $this->hasOne(GardenType::class, 'id', 'garden_type');
    }

    public function forest_type()
    {
        return $this->hasOne(ForestType::class, 'id', 'forest_type_id');
    }
    public function union()
    {
        return $this->hasOne(UnionParishad::class, 'id', 'union_parishad_id');
    }

    public function project()
    {
        return $this->hasOne(Project::class, 'id', 'project_id');
    }

    public function range()
    {
        return $this->hasOne(Range::class, 'id', 'range_id');
    }
    public function bit()
    {
        return $this->hasOne(Bit::class, 'id', 'bit_id');
    }
    public function sfpc()
    {
        return $this->hasOne(Sfpc::class, 'id', 'sfpc_id');
    }

    public function sfntc()
    {
        return $this->hasOne(Sfpc::class, 'id', 'sfpc_id');
    }

    public function garden_information()
    {
        return $this->hasOne(GardenInformation::class, 'id', 'garden_information_id');
    }
}
