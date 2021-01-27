<?php
namespace app\index\controller;

use think\Controller;
use think\Db;
use think\Request;
use think\Session;

 class Equipment extends Controller{


    public function epindex(){
        $pcount = Db::table('pend_equipitem')->where('status','=',0)->count('id');
        $ocount = Db::table('pend_equipitem')->where('status','=',1)->count('id');
        $this->assign([
            'pcount'=>$pcount,
            'ocount'=>$ocount,
        ]);
        
        return $this->fetch('epindex');
    }
    public function addnewep(){
        $pcount = Db::table('pend_equipitem')->where('status','=',0)->count('id');
        $ocount = Db::table('pend_equipitem')->where('status','=',1)->count('id');
        $this->assign([
            'pcount'=>$pcount,
            'ocount'=>$ocount,
        ]);
        return $this->fetch('addnewep');
    }
    public function add(){
        return $this->fetch('add');
    }
    public function pendlist(){
        $pcount = Db::table('pend_equipitem')->where('status','=',0)->count('id');
        $ocount = Db::table('pend_equipitem')->where('status','=',1)->count('id');
        $this->assign([
            'pcount'=>$pcount,
            'ocount'=>$ocount,
        ]);
        return $this->fetch('pendlist');
    }

    public function signpage(){
        $pcount = Db::table('pend_equipitem')->where('status','=',0)->count('id');
        $ocount = Db::table('pend_equipitem')->where('status','=',1)->count('id');
        $this->assign([
            'pcount'=>$pcount,
            'ocount'=>$ocount,
        ]);
        return $this->fetch('signpage');
    }

    public function popsignlayer(){
        return $this->fetch('popsignlayer');
    }

    public  function tabledata(Request $request){ //add 頁面表格數據傳遞
        $msg = [];
        $totalno = Db::table('compal_sod_instrument_list')->count('id');
        $limit = $request->param('limit');
        $page = $request->param('page');
        $tol=($page-1)*$limit;//计算出从那条开始查询
        //return json($page);
        $res = Db::table('compal_sod_instrument_list')
        ->limit($tol,$limit)
        ->order('id','asc')
        ->select();
        //return json($res);
        $msg['code'] = 0;
        $msg['msg'] = '';
        $msg['count'] = $totalno;
        $msg['data'] = $res;
        return json($msg);
    }
    public function searchep(Request $request){
        $index = $request->param('index');
        $msg = [];
        $totalno = Db::table('compal_sod_instrument_list')->where('yiqimingcheng','like',"%$index%")->count('id');
        $limit = $request->param('limit');
        $page = $request->param('page');
        $tol=($page-1)*$limit;//计算出从那条开始查询
        $res = Db::table('compal_sod_instrument_list')->where('yiqimingcheng','like',"%$index%")
        ->limit($tol,$limit)
        ->order('id','asc')
        ->select();
                                                                                        //select()方法裡面加上false 就表示打印sql語句
                                                                                        //$index 用單引號不會被解析！！！
        //$res = Db::table('compal_sod_instrument_list')->where('yiqimingcheng','like','"."$index"."')->select(false);
        //$sql = Db::table('compal_sod_instrument_list')->;
        $msg['code'] = 0;
        $msg['msg'] = '';
        $msg['count'] = $totalno;
        $msg['data'] = $res;
        return json($msg);
    }
    public function addnew(Request $request){
        $data = $request->param()['data'];
        if(isset($data)){
            for($i=0;$i<count($data);$i++){
                $data[$i]['id'] = $data[$i]['id'].md5($data[$i]['id']);
            }
            $res = Db::table('compal_sod_instrument_list')->insertAll($data);//插入全部数据，$data数据字段数，默认需要数据库字段数和data里的一致，主要注意的是，字段类型会影响插入
            return json($res);
        }
        
    }

    public function delete(Request $request){
        $data = $request->param()['data'];
        $id = [];
        if(isset($data)){
            for($i=0;$i<count($data);$i++){
                array_push($id,$data[$i]['id']);
            }
            //return json($id);
            $res = Db::table('compal_sod_instrument_list')
            ->where('id','in',$id)->delete();
        }
        return json($res);
    }

    public function save_edit(Request $request){
        $data = $request->param()['data'];
        //return json(count($data));
       // $res = '';
        if(isset($data)){
           for($i=1;$i<=count($data);$i++){
            $res = Db::table('compal_sod_instrument_list')
            ->where('id','=',$data[$i]['id'])->update( [ $data[$i]['field'] => $data[$i]['value']]);
           }
        }
         
        return json($res);
    }

    //带出带校验的仪器清单

    public function listdata(Request $request){
       $count = Db::table('pend_equipitem') ->where('status','=',0)->count('id');  
       $limit = $request->param('limit');
       $page = $request->param('page');
       $tol=($page-1)*$limit;
       //计算出从那条开始查询
       $res = Db::table('pend_equipitem')
       ->where('status','=',0)
       ->limit($tol,$limit)
       ->order('id','asc')
       ->select();

       $ret = array(
        'code' => 0,
        'msg' => '',
        'count' => $count,
        'data' => $res,
       );
       return json($ret);
    }

    //根据id带出info
    public function getinfobyid(Request $request){
        $id = $request->param('id');
        $res = Db::table('pend_equipitem')->where('id','=',$id)->select();
        $ret = array(
           'code'=>0,
           'msg'=>'',
           'count'=>1,
           'data'=>$res, 
        );
        return json($ret);
    }

    public function upload(Request $request){
        $arr = array(
            'code' => 0,
            'msg'=> '',
        );
        $id = $request->get('id');
        $sname = urldecode($request->get('sname')) ;
        $path = 'D:/phpstudy/WWW/tp5/public/static/epimgs'.'/'.$id;
        if( !is_dir($path) ){
            mkdir($path,0777, true);
        }
        $file = $request->file('file');
        if($file){ //表示上传无错误
          $info =   $file->rule(function (){
                return md5(microtime(true));
            })->move(ROOT_PATH.'public'.DS.'static'.DS.'epimgs'.DS.$id,$sname,true);
           if($info){
               $arr['msg'] = 'success';
               return json($arr);//这个返回值会作为layui upload模块的 done 回调函数的参数传入！！！
           }else{
                // 上传失败获取错误信息
                return json($file->getError());
            }
        }
    }


 }

