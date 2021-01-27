<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/6/23
 * Time: 16:07
 */
namespace app\index\model;
use think\Model;
class Book extends Model{
    protected $type =  [
        'publish_time'=>'timestamp:Y-m-d',
    ];
    protected $autoWriteTimestamp = true;//开启自动写入时间戳
    protected $insert = ['status'=>1];//自动填入的字段

    public function user(){
        return $this->belongsTo('User');
    }
}