<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\product_type;
use App\User;
use App\comment;

class product extends Model
{
    protected $table = 'products';

    protected $appends = ['type_product'];
    //1 SP Chỉ thuộc 1 loại hàng (1-1)-> Khóa ngoại bảng product, id của bảng Product
    public function product_type_item(){
        return $this->belongsTo('App\product_type_item','id_type_item',id);
    }
    //1-n
    public function bill_detail(){
    	return $this->hasMany('App\bill_detail','id_product','id');
    }

    //1-1
    public function User(){
        return $this->belongsTo('App\User','id_user',id);
    }

public function comments()
{
    return $this->hasMany('App\comment');
}

}