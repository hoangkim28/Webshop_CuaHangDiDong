<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class comment extends Model
{
    protected $table = 'comments';
	protected $filltable = ['content','name','email','id_product'];
	public function products()
	{
    	return $this->belongsTo('App\product');
	}
}
