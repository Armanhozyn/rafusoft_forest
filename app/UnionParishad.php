<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UnionParishad extends Model
{
    public $timestamps = true;
   protected $fillable = ['name','thana_id','district_id'];
   public function thana(){
    return $this->hasOne(Thana::class,'id','thana_id');
}

public function district(){
    return $this->hasOne(District::class,'id','district_id');
}
}
