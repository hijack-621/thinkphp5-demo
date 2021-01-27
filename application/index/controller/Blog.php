<?php
namespace app\index\controller;
use think\Controller;
class Blog  {
//    public function _empty()
//    {
//        header("HTTP/1.0 404 Not Found");//使HTTP返回404状态码
//        $this->display('Common:404');
//        return '11';
//
//    }
    public function get($id=5){
        return '查看id='.$id.'的内容';
    }

    public function read($name){
        return '查看name='.$name.'的内容';
    }
    public function archive($year,$month){
        return '查看'.$year.'/'.$month.'的归档内容';
    }
}
