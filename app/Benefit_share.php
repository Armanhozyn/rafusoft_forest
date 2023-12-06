<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Benefit_share extends Model
{
    protected $tables = "benefit_share";
    protected $fillable = ['office_order_no','payment_date', 'benefit_male', 'benefit_female','garden_id'];
}
