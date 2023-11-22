<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WoodLot extends Model
{
    public $timestamps = true;
    protected $fillable = ['garden_id', 'division_group_no_year', 'range_lot_no_year',  'fuel', 'bolli_count', 'tenderer_name_address',  'quoted_rate', 'tree_type','tree_count','wood_amount_sft','advance_details','advance_amount','collateral_details','collateral_amount'];

    public function garden()
    {
        return $this->hasOne(Garden::class, 'id', 'garden_id');
    }

    public function creator()
    {
        return $this->hasOne(User::class, 'id', 'created_by');
    }
    public function approver()
    {
        return $this->hasOne(User::class, 'id', 'approved_by');
    }

    public function species()
    {
        return $this->hasMany(TreeSpeciesInformation::class,'wood_lot_id','id');
    }
}
