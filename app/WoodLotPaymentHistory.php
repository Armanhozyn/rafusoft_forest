<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WoodLotPaymentHistory extends Model
{
    public $timestamps = true;
    protected $fillable = ['wood_lot_id', 'money_collection_slip_no', 'money_collection_date', 'money_deposit_slip_no', 'money_deposit', 'vat','tax','late_fees','collection_amount','created_by'];

    public function woodlot()
    {

        return $this->hasOne(WoodLot::class, 'id', 'wood_lot_id');
    }
}
