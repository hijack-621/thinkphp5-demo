<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Route;

//Route::rule('gets/:id','index/Blog/get');

return [
    //全局变量规则定义！！！
    '__pattern__' =>['id'=>'\d+'],
    'user/index' => 'index/user/index',
    'user/create' => 'index/user/create',
    'user/add' => 'index/user/add',
    'user/add1' => 'index/user/add1',
    'user/add_list' => 'index/user/addList',
    'user/update/:id' => 'index/user/update',
    'user/delete/:id' => 'index/user/delete',
    'user/:id' => 'index/user/read',
    'login' =>'index/index/login',
    ];


//    'Blog/:year/:month' => ['Blog/archive', ['method' => 'get'], ['year' => '\d{4}', 'month' => '\d{2}']],
//    'Blog/:id' => ['Blog/get', ['method' => 'get'], ['id' => '\d+']],
//    'Blog/:name' => ['Blog/read', ['method' => 'get'], ['name' => '\w+']], ];
// Route::rule( [
//     'Blog/:year/:month' => ['Blog/archive', ['method' => 'get'], ['year' => '\d{4}', 'month' => '\d{2}']],
//     'Blog/:id' => ['Blog/get', ['method' => 'get'], ['id' => '\d+']],
//     'Blog/:name' => ['Blog/read', ['method' => 'get'], ['name' => '\w+']],
//     ]);
