<?php
namespace app\index\controller;

use think\Request;
use think\Db;
class Requesttest{
    use \traits\controller\Jump;//放在class里面？？？

    public function index($name = ''){

//        $list =Db::name('data')->where('id','>','1')->column('*','id');//返回某一列数据，colmun有第二个参数表示以这个参数为索引
//        dump($list);

//            $list = Db::name('data')->where('id','<','5')->max('id');
//            dump($list);

//        $list = Db::name('data')->where('id > :id and data is not null',['id'=>2])->select();
        //sql语句相当于  查询出id>2且data不为空的记录
//        dump($list);
//        $res = Db::name('data')->insert(['id'=>6,'data'=>'ljc','create_time'=>'2020-1-1']);
//        dump($res);

        //$result = Db::name('data')->whereTime('create_time','>=','2020-1-1')->select();
        //$result = Db::name('data')->whereTime('create_time','<','this week')->select();
        //$result = Db::name('data')->whereTime('create_time','<','-2 days')->select();
        $res = Db::name('data')->where('id','>',0)->chunk('2',function ($list){
            foreach ($list as $data){

            }
            //dump($list);
        });


        dump($res);





//
//        $res = Db::name('data')->where('id','5')->find();//获取一条记录
//        dump($res);
           // $result = DB::execute('insert into think_data (id,data) values (4,"jing")');//插入数据 method1
           // dump($result);

         // $result = DB::name('data')->insert(['id'=>5,'data'=>'hello']);//插入数据 method1

        //$result = Db::name('data')->where('id',5)->update(['data'=>'jingjing']);
        //事务1
//       Db::transaction(function (){
//
//           Db::table('think_data')->insert(['id'=>5,'data'=>'milk']);
//
//
//
//        });
//        //事务2
//       Db::startTrans();
//       try{
//           Db::table('think_data')->insert(['id'=>5,'data'=>'milk']);
//
//       } catch (\Exception $e){
//           Db::rollback();
//       }

// 启动事务 Db::startTrans();
// try {Db::table('think_user') ->delete(1);
// Db::table('think_data') ->insert(['id' => 28, 'name' => 'thinkphp', 'status' => 1]);
// // 提交事务 Db::commit(); } catch (\Exception $e) {
// // 回滚事务 Db::rollback(); }



//
//        $request = Request::instance();
//        echo 'url:'.$request->url().'<br>';
//        return 'hello'.$name;
        $data = ['name'=>'jack','status'=>'111'];
        //return xml($data);
        //<think>
        //<name>jack</name>
        //<status>111</status>
        //</think> xml格式数据
       // return json($data,201,['Cache-Control'=>'no-cache,must-revalidate']);//返回xml格式及json格式数据,状态码加响应头信息
//        if('thinkphp'==$name){
//            $this->redirect('http://thinkphp.cn',301);
//            //$this->success('欢迎使用thinkphp','hello');
//        }else{
//            $this->success('hello','hello');
//           // $this->error('出错了','guest');
//        }

    }
    public function hello(){
        return 'hello,thinkphp';
    }

    public function guest(){
        return '跳转咯';
    }
}