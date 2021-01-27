<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/6/11
 * Time: 10:56
 */
 namespace app\index\model;
 use think\Model;

class User extends Model {
//    protected $table = 'think_user';
//
    protected $dateFormat = 'Y-m-d H:i:s';
//    protected $type = [
//        'birthday' => 'timestamp:Y-m-d H:i:s'
//    ];

      protected $autoWriteTimestamp = 'timestamp'; // 定义自动完成的属性  如果 默认只开启自动时间完成属性，【true】，而没有指定datetime或者timestamp的话，
                                                   //自动写入的是strtotime的时间戳，也就是毫秒数
      protected $insert =['status' => 1] ;
//    protected function getBirthdayAttr($birthday) {
//    return date('Y-m-d', $birthday);
//}
//    protected function getUserBirthdayAttr($value,$data) {读取器
//        return date('Y-m-d',
//        $data['birthday']);
//    }
//
//    protected function setBirthdayAttr($value){修改器
//        return strtotime($value);
//    }
//    protected function  scopeEmail($query){
//
//        $query->where('email','123@qq.com');
//    }
//    protected function scopeStatus($query) {
//        $query->where('status', 1);
//    }
//
//    protected static  function  base($query){
//        $query->where('status','1');
//    }
    public function profile() { // 用户HAS ONE档案关联
         return $this->hasOne('Profile');//hasOne方法有5个参数，依次分别是： hasOne('关联模型名','关联外键','主键','别名定义','join类型')
         }

    public function books(){
        return $this->hasMany('Book');
    }
}