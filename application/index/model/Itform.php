<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/7/6
 * Time: 9:40
 */
namespace app\index\model;
use think\Model;
class Itform extends Model{
    public  function info(){
        return $this->hasOne('Info');
    }
}