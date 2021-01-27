<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/6/11
 * Time: 14:22
 */
/**
 * @property string nickname
 */
namespace app\index\controller;

use app\index\model\Book;
use app\index\model\User as UserModel;//使用user模型，user模型对应数据库user表！！！
use app\index\model\Profile;
use think\Controller;
use think\Validate;
use think\Db;

class User extends Controller  {
        public function add(){
            $user = new UserModel;


            $user->username = '流年';
            $user->password = '123456';
            $user->create_time = '1996-1-1';
            $user->update_time = '1996-1-2';
            $user->status = 0;
            if($user->save()){
// //                $profile = new Profile;
// //                //使用profile对象 如果要使用数组形式  就需要继承Controller控制器
// //                $profile->truename = '刘晨';
// //                $profile->birthday = '1977-01-01';
// //                $profile->address = '中国上海';
// //                $profile->email = 'thinkphp@qq.com';
//                 //数组
//                 $profile['truename'] = '刘晨';
//                 $profile['birthday'] = '1977-01-01';
//                 $profile['address'] = '中国上海';
//                 $profile['email'] = 'thinkphp@qq.com';
//                 $user->profile()->save($profile);
                return 'add  success';

            }else{
                return $user->getError();
            }

        }

        public function add2(){
            $user = new UserModel;
            $user->username='test1';
            $user->password = '123';
            if($user->save()){  
                // //                //使用profile对象 如果要使用数组形式  就需要继承Controller控制器
                // //                $profile->truename = '刘晨';
                // //                $profile->birthday = '1977-01-01';
                // //                $profile->address = '中国上海';
                // //                $profile->email = 'thinkphp@qq.com';
                //                 //数组
                //                 $profile['truename'] = '刘晨';
                //                 $profile['birthday'] = '1977-01-01';
                //                 $profile['address'] = '中国上海';
                //                 $profile['email'] = 'thinkphp@qq.com';
                //                 $user->profile()->save($profile);
                $profile = new Profile;
                $profile->truename = 'testla'; //此处user 可不继承controller 
                $profile->birthday = '1996-1-1';
                $profile->address = '123321com';
                $profile->email = '123321@qq.com';
                $user->profile()->save($profile);
                return 'add success!';
            }else {
                return $this->getError();
            }
        }


        public function read($id){
            //$user = UserModel::get($id);

            $user = UserModel::get($id,'profile');//进行关联预载入查询。

            echo $user->name.'<br>';
            echo $user->nickname.'<br>';
            echo $user->profile->truename.'<br>';
            echo $user->profile->email.'<br>';

        }

        //关联更新
    public function update($id){
            $user = UserModel::get($id);
            $user->name = 'framework';
            if($user->save()){
                $user->profile->email = 'liujc@123.com';
                $user->profile->save();
                return '用户【'.$user->name.'】更新成功';
            }else{
                $user->getError();
            }
    }

    //关联删除
    public function delete($id){
            $user = UserModel::get($id);
            if($user->delete()){
                $user->profile->delete();
                return '删除成功'.$user->name;//user表和profile表里的关于这个id的记录都会被删除
            }else{
               return $user->getError();
            }
    }
    public function addBook(){
           // echo phpinfo();
         $user = UserModel::get(21);//这个数字必须是user表里有的id，不然就会报错
//         $book = new Book;
//         $book->title = 'thinkphp快速入门';
//         $book->publish_time = '2020-1-1';
//         $user->books()->save($book);
        $books = [
            ['title'=>'thinkphprumen','publish_time'=>'2020-1-1'],
            ['title'=>'thinkphpjinjie','publish_time'=>'2020-6-6'],

         ];
           $user->books()->saveAll($books);
         /*
            添加多个数据
         $book - [
            ['title'=>'','publish_time'=>'']
            ['title'=>'','publish_time'=>'']
         ]
         ];
           $user->books()->saveAll($book);

         */

         return '添加成功';

    }
        public function bookselect(){
            $user = UserModel::has('books','>=',2)->select();//查询写过2本书以上的作者
            dump($user);
            // 查询有写过书的作者列表 $user = UserModel::has('books')->select(); 
            // 查询写过三本书以上的作者 $user = UserModel::has('books', '>=', 3)->select(); 
            // 查询写过ThinkPHP5快速入门的作者 $user = UserModel::hasWhere('books', ['title' => 'ThinkPHP5快速入门'])->select();
        }
        public function updatebook($id){
            $user = UserModel::get($id);
            $books = $user->books()->getByTitle('21111');
            $books->title = '12222';//将标题为21111的书的标题改为12222！！！ getBy+ Title【字段】

            $books->save();
        }

    public function show(){
            $user = UserModel::get(27);
            $books = $user->books()->where('status',27)->select();
            var_dump($books);
            $book = $user->books()->getByTitle('thinkphprumen');
            var_dump($book);
    }


//    public function add1(){
//
//
//        $user1 = new UserModel;
//        $user1['nickname'] = 'kan1yun';
//        $user1['email'] = 'thinkphp1@qq.com';
//        $user1['birthday'] = '19717-03-05';
//        if($user1->save()){
//            return '用户[ ' . $user1->nickname . ':' . $user1->id . ' ]新增成功';
//        }else{
//            return $user1->getError();
//        }
//    }
//    public function read($id='') {  //访问一直报错提示model不存在要注意去route文件里看是不是定义了简化路由，导致url输入方式不对！！！！
//
//        $user = UserModel::get($id);
//        echo $user->nickname . '<br/>';
//        echo $user->email . '<br/>';
//        echo $user->birthday . '<br/>';
//        echo $user->user_birthday . '<br/>';
//        echo $user->status . '<br/>';
//        echo $user->create_time . '<br/>';
//        echo $user->update_time . '<br/>';
//
//    }
//
//    public function index(){
//        $list = UserModel::all();
//        foreach($list as $user){
//            echo $user->nickname.'<br>';
//            echo $user->email.'<br>';
//            echo $user->birthday.'<br>';
//            echo '-------------------------------------------------'.'<br>';
//
//        }
//    }
//    public function update($id){
//        $list = UserModel::get($id);
//        $list->nickname='ljc';
//        $list->email='123321@qq.com';
//        if($list->save()!==false){
//            echo 'update success';
//        }else{
//            echo 'upate fail';
//        }
//
//    }
//    public function index1(){
//        $list = UserModel::scope('email')->select();
//        foreach ($list as $user){
//            echo $user->nickname.'<br>';
//            echo $user->email.'<br>';
//            echo $user->birthday.'<br>';
//            echo '-------------------------------------------------'.'<br>';
//
//        }
//    }
    public function create(){
        return view('user/create');
    }
    public function useview(){
        $result = Db::view('user','id,username,status')->view('profile',['truename'=>'truename','address','email'],'profile.user_id=user.id')->where('status',0)->order('id desc')->select();
        dump($result);
    }
//    public function add(){
//        //在控制器中进行数据验证
//        $data = input('post.');
//        $result = $this->validate($data,'User');
//        $check = Validate::is($data['birthday'],'date');如果有一些个别的验证没有在验证器里面定义，也可以使用静态方法单独处理，
                                                          //例如下面对birthday字段单独 验证是否是一个有效的日期格式：
//        if(false==$check){
//            return '生日格式不正确';
//        }
//        if(true == $result){
//            return $result;
//        }
//        $user = new UserModel;
//        $user->allowField(true)->save($data);
//        return $user->nickname.'添加成功';



//        $user = new UserModel;
//        if($user->allowField(true)->validate(true)->save(input('post.'))){
//            return '用户['.$user->nickname.':'.$user->id.']新增成功';
//        }else{
//            return $user->getError();
//        }
//        $list = [
//            ['nickname'=>'zhangsan','email'=>'123@qq.com','birthday'=>strtotime('1996-01-01')],
//            ['nickname'=>'lisi','email'=>'123@qq.com','birthday'=>strtotime('1996-01-01')],
//
//        ];
////        $user->nickname = 'liunian';
////        $user->email = 'thinkphp@qq.com';
////        $user->birthday = strtotime('1977-03-05');
//            if($user->saveAll($list)){//批量添加用户
//                return '用户piliang新增成功';
//            }else{
//                return $user->getError();
//            }
//    }


}