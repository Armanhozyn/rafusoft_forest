<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProfitDistribution extends Model
{
    protected $fillable = ['garden_id', 'office_order_no', 'office_order_date', 'tff_profit_share', 'beneficiary_profit_share', 'beneficiary_male', 'beneficiary_female', 'land_owner_profit_share', 'union_parishadh_profit_share', 'approved_by', 'edit_request', 'created_by'];
    public function garden()
    {
        return $this->hasOne(Garden::class, 'id', 'garden_id');
    }
}
