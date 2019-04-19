<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Applicant extends Model
{
    protected $fillable = ['id', 'name', 'email', 'isHired', 'lastApplication'];
}
