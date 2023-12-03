<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class WoodLotDepositPayment extends Model
{
    protected $tables = "wood_lot_deposit_payments";
    protected $fillable = ['wood_lot_id','money_deposit_slip_no', 'party_id', 'institue_id', 'deposit_amount','comment'];

}
