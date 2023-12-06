<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Benefit_share_payments extends Model
{
    protected $tables = "benefit_share_payments";
    protected $fillable = [ 'party_id','institute_id','amount','comment'];
}
