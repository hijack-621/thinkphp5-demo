<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/6/22
 * Time: 15:24
 */

namespace app\index\validate;
use think\Validate;
    class User extends Validate{
//        protected $rule = [
//            'nickname'=>'require|min:5|token',
//            'email'   =>'require|email',
//            'birthday'=>'dateFormat:Y-m-d',
//        ];//写法一

        protected $rule = [
            'nickname'=>['require','min'=>5],
            'email'   =>['checkMail:thinkphp.cn','邮箱格式不对'],
            'birthday'=>['dateFormat'=>'Y-m-d H:i:s']
        ];
//    protected $rule = [
//                'nickname|昵称'=>'require|min:5',
//                'email|youxaing'=>'require|email',
//                'birthday|shengri'=>'dateFormat:Y-m-d',
//            ];
//    protected $rule = [
//        'nickname|昵称' => 'require|min:5',
//        'email|邮箱' => 'require|email',
//        'birthday|生日' => 'dateFormat:Y-m-d',
//        ];
//
        protected function checkMail($value,$rule){
            $result = preg_match('/^\w+([-+.]\w+)*@' . $rule . '$/', $value); if (!$result) { return '邮箱只能是' . $rule . '域名'; } else { return true; }
        }

    }