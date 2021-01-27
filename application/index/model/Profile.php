<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/6/23
 * Time: 13:35
 */
namespace app\index\model;
use think\Model;
class Profile extends Model{
    protected $type = [
        'birthday'=>'timestamp:Y-m-d',
    ];


    public function user(){
        return $this->belongsTo('User');//关联模型user belongsTo 方法和 hasOne 一样，也有5个参数： 
                                        //belongsTo('关联模型名','关联外键','关联模型主键','别名定义','join类型')
    }
}
