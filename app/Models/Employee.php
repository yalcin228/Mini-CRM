<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{
    use HasFactory;

    protected $table="employees";
    protected $fillable=['first_name','last_name','companies_id','email','phone'];

    public function getCompanie(){
        return  $this->hasOne('App\Models\Companie','id','companies_id');
    }
}
