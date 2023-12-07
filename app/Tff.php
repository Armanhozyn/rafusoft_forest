<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tff extends Model
{
    protected $tables = "tffs";
    protected $fillable = [ 'garden_id','office_order_no','payment_date','tff_payment'];
}
