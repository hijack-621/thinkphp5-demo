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
    public function endlist(){
        $pcount = Db::table('pend_equipitem')->where('status','=',0)->count('id');
        $ocount = Db::table('pend_equipitem')->where('status','=',1)->count('id');
        $this->assign([
            'pcount'=>$pcount,
            'ocount'=>$ocount,
        ]);
        return $this->fetch('endlist');
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
    //带出已经校验的list

    public function elistdata(Request $request){
       $count = Db::table('pend_equipitem') ->where('status','=',1)->count('id');  
       $limit = $request->param('limit');
       $page = $request->param('page');
       $tol=($page-1)*$limit;
       //计算出从那条开始查询
       $res = Db::table('pend_equipitem')
       ->where('status','=',1)
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

    public function getImgpathById(Request $request){
        $id = $request->param('id');
        $res = Db::table('ep_img_path')->field('path1,path2')->where('id', '=', $id)->select();
        if(count($res)>=1){
            return json($res);
        }else{
            return json('no data');
        }

    }


    public function upload(Request $request){
        $arr = array(
            'code' => 0,
            'msg'=> '',
        );
        $id = $request->get('id');
        $sname = urldecode($request->get('sname')) ;
        $step = 'path'.$request->get('step');
       
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
                $ext = $info->getExtension();
                $hpath = '/tp5/public/static/epimgs/'.$id.'/'.$sname.'.'.$ext;
                $res0 = Db::table('ep_img_path')->where('id','=', $id)->select();
                if( count($res0)>=1 ){
                    $res = Db::table('ep_img_path')->where('id','=', $id)->update([$step=>$hpath]);  
                }
                else{
                    $res = Db::table('ep_img_path')->insert(['id'=>$id,$step=>$hpath]);
                }
                
                if( $res>=0 ){
                    $arr['msg'] = 'success';
                    return json($arr);//这个返回值会作为layui upload模块的 done 回调函数的参数传入！！！
                }else{
                    $arr['code'] = '1';   
                    $arr['msg'] = 'error';
                    return json($arr);//这个返回值会作为layui upload模块的 done 回调函数的参数传入！！！ 
                }
               
           }else{
                // 上传失败获取错误信息
                return json($file->getError());
            }
        }
    }

    public function update_ep(Request $request){
        ini_set("error_reporting","E_ALL & ~E_NOTICE");
        $id = $request->param('id');
        $memo = $request->param('memo');
        $step = $request->param('step');
        $rec =  $request->param('rec');
        $etime = date('Y-m-d H:i:s');
        $bmailer =Db::table('pend_equipitem')->where('id', '=' ,$id)->value('bgr_mail');//单独获取值！！！
        $fmailer =Db::table('pend_equipitem')->where('id', '=' ,$id)->value('fzr_mail');
        $dmailer =Db::table('pend_equipitem')->where('id', '=' ,$id)->value('dt1_mail');
        $mailer =[$bmailer,$fmailer,$dmailer];
        $arr = array(
            'res'=>[],
            'mail'=>'',
        );
        //dump($mailer); 
        if(isset($id)){
            $starr = Db::table('pend_equipitem')->field('step1,step2,status')->where('id', '=', $id)->select();
            $datarr = Db::table('pend_equipitem')->field(' `name`,`model`,`brand`,`plant`,`dept`,`checkdata`,`checktype`,`custodian`,`incharge`,`director1`')->where('id','=',$id)->select();
            $html = 
                '<tr>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['name'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['model'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['brand'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['plant'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['dept'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['checkdata'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['checktype'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['custodian'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['incharge'].'</td>'
                .'<td style="border:1px solod black;text-align:center;">'.$datarr[0]['director1'].'</td>'
                .'</tr>'; 
            if($starr[0]['status']==1){
                $arr['res'] = '签核已完成，请勿重复操作';
                return json($arr);
            }
            if($step==1){
                if($starr[0]['step1']==1){
                    $arr['res'] = 'finished';
                    return json($arr);   
                }
                array_splice($mailer,0,1);
                $subject='儀器校驗提醒郵件';
                $content ='
                <table border="1" cellspacing="0" cellpadding="0" style="border-spacing:0;bloder-collapse:collapse;margin:10px 0">
                <caption style="font-family: Calibri,serif;font-size: 18px;margin: 1em 0;">Hi,'.$rec.' 下面表格中儀器請送去校驗，校驗完畢后請維護系統</caption>    
                <tbody>
                    <tr style="border:1px solod black;text-align:center;color:white;">
                    <th style="background-color:#87ceeb;font-weight:bold;">仪器名称</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">型号</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">厂牌</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">厂区</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">部门</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">校验日趋</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">校验性质</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">保管人</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">负责人</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">保管人主管</th>
                    </tr>
                    '.$html.'
                </tbody>
                </table>';
                $arr['mail'] = send_mail($mailer,$subject,$content);
                if($arr['mail']==true){
                    $arr['res'] = Db::table('pend_equipitem')->where('id', '=', $id)->update([ 'step'.$step =>1, 'etime'.$step => $etime, 'memo'.$step => $memo ]);
                }else{
                    return json($arr);
                }

            }elseif($step==2){
                if($starr[0]['step1']==1){
                    $subject='儀器校驗提醒郵件';
                    $content ='
                <table border="1" cellspacing="0" cellpadding="0" style="border-spacing:0;bloder-collapse:collapse;margin:10px 0">
                <caption style="font-family: Calibri,serif;font-size: 18px;margin: 1em 0;">Hi,'.$rec.',下面表格中儀器已校驗完畢，詳情見于10.129.86.29/tp5/index/Equipment/endlist</caption>    
                <tbody>
                    <tr style="border:1px solod black;text-align:center;color:white;">
                    <th style="background-color:#87ceeb;font-weight:bold;">仪器名称</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">型号</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">厂牌</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">厂区</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">部门</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">校验日趋</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">校验性质</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">保管人</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">负责人</th>
                    <th style="background-color:#87ceeb;font-weight:bold;">保管人主管</th>
                    </tr>
                    '.$html.'
                </tbody>
                </table>';
                    $arr['mail'] = send_mail($mailer,$subject,$content);
                    if($arr['mail']==true){
                        $arr['res'] =  Db::table('pend_equipitem')->where('id', '=', $id)->update([ 'step'.$step =>1, 'etime'.$step => $etime, 'memo'.$step => $memo,'status'=>1 ]);
                    }else{
                        return json($arr);
                    }
                }else{
                    $arr['res'] = '上个步骤未完成，无法进行此操作';
                    return json($arr);
                }
               
            }
            return json($arr);
        }else{
            return json('request err');
        }

    }


 }

