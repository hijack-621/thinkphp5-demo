<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/7/8
 * Time: 10:54
 */
namespace app\index\model;
use think\Model;
class Info extends Model{
    public function itform(){

        return $this->belongsTo('Itform');
    }
}