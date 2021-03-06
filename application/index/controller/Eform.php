<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/8/19
 * Time: 14:15
 */
namespace app\index\controller;
use think\Controller;
use think\Db;
use think\Request;
use think\Session;

class Eform extends Controller{
    public function eform(){
        $lfm = Db::name('lfm')->where('eflag','=',0)->count();
        $app = Db::name('afm')->where('eflag','=',0)->count();
        $bust= Db::name('bfm')->where('eflag','=',0)->count();
        $hover = Db::name('hfm')->where('eflag','=',0)->count();
        $norm = Db::name('nfm')->where('eflag','=',0)->count();
        $this->assign([
            'lfm'=>$lfm,
            'app'=>$app,
            'bust'=>$bust,
            'hover'=>$hover,
            'norm'=>$norm,
        ]);

        return $this->fetch('eform');
    }

    public function leave_form(){
        return $this->fetch('leave-form');
    }

    public function advanced_apply(){
        return $this->fetch('advanced-apply');
    }

    public function business_trip(){
        return $this->fetch('business-trip');
    }

    public function holiday_overtime(){
        return $this->fetch('holiday-overtime');
    }

    public function normal_overtime(){
        return $this->fetch('normal-overtime');
    }

    public function confirmlayer(){
        return $this->fetch('confirmlayer');
    }
    public function appconfirm(){
        return $this->fetch('appconfirm');
    }

    public function hoverconfirm(){
        return $this->fetch('hoverconfirm');
    }
    public function normconfirm(){
        return $this->fetch('normconfirm');
    }
    public function bustconfirm(){
        return $this->fetch('bustconfirm');
    }

    public function details(){
        return $this->fetch('detailsofOvertime');
    }

    public function alteremp(){
        return $this->fetch('alter_employee');
    }

    public function adduser(){
        return $this->fetch('adduser');
    }

    public function alterpass(){
        return $this->fetch('alterpass');
    }


    public function exportlfm(){
        $lfm = Db::name('lfm')->where('eflag','=',0)->count();
        $app = Db::name('afm')->where('eflag','=',0)->count();
        $bust= Db::name('bfm')->where('eflag','=',0)->count();
        $hover = Db::name('hfm')->where('eflag','=',0)->count();
        $norm = Db::name('nfm')->where('eflag','=',0)->count();
        $this->assign([
            'lfm'=>$lfm,
            'app'=>$app,
            'bust'=>$bust,
            'hover'=>$hover,
            'norm'=>$norm,
        ]);
        return $this->fetch('exportlfm');
    }
    public function exportapp(){
        $lfm = Db::name('lfm')->where('eflag','=',0)->count();
        $app = Db::name('afm')->where('eflag','=',0)->count();
        $bust= Db::name('bfm')->where('eflag','=',0)->count();
        $hover = Db::name('hfm')->where('eflag','=',0)->count();
        $norm = Db::name('nfm')->where('eflag','=',0)->count();
        $this->assign([
            'lfm'=>$lfm,
            'app'=>$app,
            'bust'=>$bust,
            'hover'=>$hover,
            'norm'=>$norm,
        ]);
        return $this->fetch('exportapp');
    }
    public function exporthover(){
        $lfm = Db::name('lfm')->where('eflag','=',0)->count();
        $app = Db::name('afm')->where('eflag','=',0)->count();
        $bust= Db::name('bfm')->where('eflag','=',0)->count();
        $hover = Db::name('hfm')->where('eflag','=',0)->count();
        $norm = Db::name('nfm')->where('eflag','=',0)->count();
        $this->assign([
            'lfm'=>$lfm,
            'app'=>$app,
            'bust'=>$bust,
            'hover'=>$hover,
            'norm'=>$norm,
        ]);
        return $this->fetch('exporthover');
    }
    public function exportnorm(){
        $lfm = Db::name('lfm')->where('eflag','=',0)->count();
        $app = Db::name('afm')->where('eflag','=',0)->count();
        $bust= Db::name('bfm')->where('eflag','=',0)->count();
        $hover = Db::name('hfm')->where('eflag','=',0)->count();
        $norm = Db::name('nfm')->where('eflag','=',0)->count();
        $this->assign([
            'lfm'=>$lfm,
            'app'=>$app,
            'bust'=>$bust,
            'hover'=>$hover,
            'norm'=>$norm,
        ]);
        return $this->fetch('exportnorm');
    }
    public function exportbust(){
        $lfm = Db::name('lfm')->where('eflag','=',0)->count();
        $app = Db::name('afm')->where('eflag','=',0)->count();
        $bust= Db::name('bfm')->where('eflag','=',0)->count();
        $hover = Db::name('hfm')->where('eflag','=',0)->count();
        $norm = Db::name('nfm')->where('eflag','=',0)->count();
        $this->assign([
            'lfm'=>$lfm,
            'app'=>$app,
            'bust'=>$bust,
            'hover'=>$hover,
            'norm'=>$norm,
        ]);
        return $this->fetch('exportbust');
    }


////////////////////////////////////////////////////////////////////////
     public function lfdata(Request $request){
       $lfdata = $request->param();
       //return json($lfdata);
       $res = Db::table('think_lfm')//????????????????????????
           ->insert([ 'job_id'=>$lfdata['data'][0]['employeeId'],'name'=>$lfdata['data'][0]['employeeName'],'dept_no'=>$lfdata['data'][0]['deptcode'],
               'begin_time'=>$lfdata['data'][0]['btime'],'end_time'=>$lfdata['data'][0]['etime'],'lday'=>$lfdata['data'][0]['days'],'lhour'=>$lfdata['data'][0]['hours'],
               'reason'=>$lfdata['data'][0]['reason'],'htype'=>$lfdata['data'][0]['htype'],'project_no'=>$lfdata['data'][0]['projectno'],'fill_time'=>$lfdata['data'][0]['filltime'],'eflag'=>0  ]);

        if($res>0){
           // return json($res);//????????????????????????
            return json($res);
        }else{
            return json('err');
        }

    }
    
    public function appdata(Request $request){
        $apdata = $request->param();
        $lfdata = $apdata['data'][0];
      //  return json($apdata);
        $res = Db::table('think_afm')//????????????????????????
        ->insert([ 'job_id'=>$lfdata['employeeId'],'name'=>$lfdata['employeeName'],'dept_no'=>$lfdata['deptcode'],
            'overtime_type'=>$lfdata['overtime_type'],'dntype'=>$lfdata['dntype'],'ocmtype'=>$lfdata['ocmtype'],'nowday'=>$lfdata['nowday'],
            'begin_time'=>$lfdata['btime'],'end_time'=>$lfdata['etime'],'pthour'=>$lfdata['pthour'],
            'oreason'=>$lfdata['oreason'],'project_no'=>$lfdata['projectno'],'fill_time'=>$lfdata['filltime'],'eflag'=>0  ]);

        if($res>0){
            // return json($res);//????????????????????????
            return json($res);
        }else{
            return json('err');
        }

    }
    public function hoverdata(Request $request){

        $hoverdata = $request->param();
        $lfdata = $hoverdata['data'][0];

        $res = Db::table('think_hfm')//????????????????????????
        ->insert([ 'job_id'=>$lfdata['employeeId'],'name'=>$lfdata['employeeName'],'dept_no'=>$lfdata['deptcode'],
            'overtime_type'=>$lfdata['overtime_type'],'dntype'=>$lfdata['dntype'],'ocmtype'=>$lfdata['ocmtype'],'nowday'=>$lfdata['nowday'],
            'begin_time'=>$lfdata['btime'],'end_time'=>$lfdata['etime'],'rthour'=>$lfdata['rthour'],
            'oreason'=>$lfdata['oreason'],'project_no'=>$lfdata['projectno'],'fill_time'=>$lfdata['filltime'],'eflag'=>0  ]);

        if($res>0){
            // return json($res);//????????????????????????
            return json($res);
        }else{
            return json('err');
        }
    }
    public function normdata(Request $request){
        $normdata = $request->param();
        $lfdata = $normdata['data'][0];
        $res = Db::table('think_nfm')//????????????????????????
        ->insert([ 'job_id'=>$lfdata['employeeId'],'name'=>$lfdata['employeeName'],'dept_no'=>$lfdata['deptcode'],
            'overtime_type'=>$lfdata['overtime_type'],'ocmtype'=>$lfdata['ocmtype'],'nowday'=>$lfdata['nowday'],
            'begin_time'=>$lfdata['btime'],'end_time'=>$lfdata['etime'],'rthour'=>$lfdata['rthour'],
            'oreason'=>$lfdata['oreason'],'project_no'=>$lfdata['projectno'],'fill_time'=>$lfdata['filltime'],'eflag'=>0  ]);

        if($res>0){
            // return json($res);//????????????????????????
            return json($res);
        }else{
            return json('err');
        }

    }
    public function bustdata(Request $request){
        $bustdata = $request->param();
        $lfdata = $bustdata['data'][0];
        $res = Db::table('think_bfm')//????????????????????????
        ->insert([ 'job_id'=>$lfdata['employeeId'],'name'=>$lfdata['employeeName'],'dept_no'=>$lfdata['deptcode'],
            'bdate'=>$lfdata['bdate'],'bday'=>$lfdata['bday'],'baddress'=>$lfdata['baddress'],
            'begin_time'=>$lfdata['btime'],'end_time'=>$lfdata['etime'],'bthour'=>$lfdata['bthour'],
            'breason'=>$lfdata['breason'],'fill_time'=>$lfdata['filltime'],'eflag'=>0  ]);

        if($res>0){
            // return json($res);//????????????????????????
            return json($res);
        }else{
            return json('err');
        }

    }

    public function edata(){
        $tb = db('lfm');
        $msg = [];
        $res =$tb->field('id,job_id,dept_no,name,begin_time,end_time,lday,lhour,reason,htype,project_no')->order('begin_time','asc')->where('eflag','=','0')->select();
        if(count($res)>0){
            $msg['data'] = $res;
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }else{
            $msg['data'] = '';
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }
        //dump($res);
        return json($msg);
    }
    public function eappdata(){
        $tb = db('afm');
        $msg = [];
        $res =$tb->field('id,job_id,dept_no,name,overtime_type,dntype,ocmtype,nowday,begin_time,end_time,pthour,oreason,project_no')->order('nowday','asc')->where('eflag','=','0')->select();

        if(count($res)>0){
            $msg['data'] = $res;
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }else{
            $msg['data'] = '';
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }
        //dump($res);
        return json($msg);

    }
    public function ebustdata(){
        $tb = db('bfm');
        $msg = [];
        $res =$tb->field('id,job_id,dept_no,name,bdate,begin_time,end_time,bday,bthour,breason,baddress')->order('bdate','asc')->where('eflag','=','0')->select();

        if(count($res)>0){
            $msg['data'] = $res;
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }else{
            $msg['data'] = '';
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }
        //dump($res);
        return json($msg);
    }

    public function ehoverdata(){
        $tb = db('hfm');
        $msg = [];
        $res =$tb->field('id,job_id,dept_no,name,overtime_type,dntype,ocmtype,nowday,begin_time,end_time,rthour,oreason,project_no')->order('nowday','asc')->where('eflag','=','0')->select();
            
        if(count($res)>0){
            $msg['data'] = $res;
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }else{
            $msg['data'] = '';
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }
        //dump($res);
        return json($msg);
    }

    public function enormdata(){
        $tb = db('nfm');
        $msg = [];
       // $res =$tb->field('id,job_id,dept_no,name,overtime_type,ocmtype,nowday,begin_time,end_time,rthour,oreason,project_no')->where('eflag','=','0')->whereTime('fill_time','today')->select();
        $res =$tb->field('id,job_id,dept_no,name,overtime_type,ocmtype,nowday,begin_time,end_time,rthour,oreason,project_no')->order('nowday','asc')->where('eflag','=','0')->select();

        if(count($res)>0){
            $msg['data'] = $res;
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }else{
            $msg['data'] = '';
            $msg['code']=0;
            $msg['msg'] = '';
            $msg['count']=1;
        }
        //dump($res);
        return json($msg);
    }

    public function ulid(Request $request){

        $id = $request->param()['eid'];
        $res = '';
        if(isset($id)){
            $res = DB::table('think_lfm')
                ->where('id','in',$id)->update(['eflag'=>1]);
        }
        return json($res);

    }
    public function uaid(Request $request){

        $id = $request->param()['eid'];
        $res = '';
        if(isset($id)){
            $res = DB::table('think_afm')
                ->where('id','in',$id)->update(['eflag'=>1]);
        }
        return json($res);

    }
    public function ubid(Request $request){

        $id = $request->param()['eid'];
        $res = '';
        if(isset($id)){
            $res = DB::table('think_bfm')
                ->where('id','in',$id)->update(['eflag'=>1]);
        }
        return json($res);

    }
    public function uhid(Request $request){

        $id = $request->param()['eid'];
        $res = '';
        if(isset($id)){
            $res = DB::table('think_hfm')
                ->where('id','in',$id)->update(['eflag'=>1]);
        }
        return json($res);

    }
    public function unid(Request $request){

        $id = $request->param()['eid'];
        $res = '';
        if(isset($id)){
            $res = DB::table('think_nfm')
                ->where('id','in',$id)->update(['eflag'=>1]);
        }
        return json($res);

    }

    public function showall(Request $request){
        $param = $request->param()['table'];
        $msg =  [];
        switch ($param){
            case'think_afm':{
                $res = Db::table($param)->field('id,job_id,dept_no,name,overtime_type,dntype,ocmtype,nowday,begin_time,end_time,pthour,oreason,project_no')->order('nowday','asc')->where('nowday','>','2020-1-1')->select();
                if(isset($res)){
                    $msg['data'] = $res;
                    $msg['code']=0;
                    $msg['msg'] = '';
                    $msg['count']=count($res);
                }

                return json($msg);
                break;

            }
            case'think_lfm':{
                $res = Db::table($param)->field('id,job_id,dept_no,name,begin_time,end_time,lday,lhour,reason,htype,project_no')->order('begin_time','asc')->where('fill_time','>','2020-1-1')->select();
                if(isset($res)){
                    $msg['data'] = $res;
                    $msg['code']=0;
                    $msg['msg'] = '';
                    $msg['count']=count($res);
                }

                return json($msg);
                break;

            }
            case'think_bfm':{
                $res = Db::table($param)->field('id,job_id,dept_no,name,bdate,begin_time,end_time,bday,bthour,breason,baddress')->order('bdate','asc')->where('fill_time','>','2020-1-1')->select();
                if(isset($res)){
                    $msg['data'] = $res;
                    $msg['code']=0;
                    $msg['msg'] = '';
                    $msg['count']=count($res);
                }

                return json($msg);
                break;

            }
            case'think_nfm':{
                $res = Db::table($param)->field('id,job_id,dept_no,name,overtime_type,ocmtype,nowday,begin_time,end_time,rthour,oreason,project_no')->order('nowday','asc')->where('nowday','>','2020-1-1')->select();
                if(isset($res)){
                    $msg['data'] = $res;
                    $msg['code']=0;
                    $msg['msg'] = '';
                    $msg['count']=count($res);
                }

                return json($msg);
                break;

            }
            case'think_hfm':{
                $res = Db::table($param)->field('id,job_id,dept_no,name,overtime_type,dntype,ocmtype,nowday,begin_time,end_time,rthour,oreason,project_no')->order('nowday','asc')->where('nowday','>','2020-1-1')->select();
                if(isset($res)){
                    $msg['data'] = $res;
                    $msg['code']=0;
                    $msg['msg'] = '';
                    $msg['count']=count($res);
                }

                return json($msg);
                break;

            }
        }
//        return json($param);
    }

    public function delete(Request $request){
        $table = $request->param()['table'];
        $id = $request->param()['id'];
        //return json($id);
        $res = Db::table($table)->where('id','=',$id)->delete();
        return json($res);
    }

    public function overtime_detail(){
        $id = Session::get('employee_id');
        $result = Db::table('think_user')->field('total,zc')->where('employee_id','=',$id)->select();
        $resign = $result[0]['total'];
        $zc = $result[0]['zc'];
        $year = date('Y');
        $mon = date("m");
        $day = date("d");
        $msg = [];
        $res = [];
        if($day<=25){
            $begin = $year.'-'.($mon-1).'-'.'26';
            $end = $year.'-'.($mon).'-'.'25';

        }else{
            $begin = $year.'-'.($mon).'-'.'26';
            $end = $year.'-'.($mon+1).'-'.'25';
        }
        //return $end;
        $resa = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
            ->where('job_id','=',$id)->sum('rthour');//?????????
        $resb = Db::table('think_nfm')->whereBetween('nowday',$begin.','.$end)
            ->where('job_id','=',$id)->sum('rthour');

        $reshj = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'ocmtype'=>2])->sum('rthour');//????????????????????????
        $resnj = Db::table('think_nfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'ocmtype'=>2])->sum('rthour');//????????????????????????

        $reshb = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'ocmtype'=>3])->sum('rthour');//?????????????????????
        $resnb = Db::table('think_nfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'ocmtype'=>3])->sum('rthour');//????????????????????????

        $reshg = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'overtime_type'=>3])->sum('rthour');//???????????????

        //die();
        $res[0]['total'] = $resa+$resb;//?????????????????????0??????'fieldname'???,?????????????????????????????????
        $res[0]['obilling'] = $reshj+$resnj;
        $res[0]['off_day'] = $reshb+$resnb;
        $res[0]['hhour'] = $resa;
        $res[0]['nhour'] = $resb;
        $res[0]['nhhour'] = $reshg;
        $res[0]['resign'] = $resign;
        $res[0]['zc'] = $zc;

        $msg['code']=0;
        $msg['msg'] = '';
        $msg['count']=1;
        $msg['data'] = $res;

        return json($msg);
    }
    public function list_detail(){
        $id = Session::get('employee_id');
        $year = date('Y');
        $mon = date("m");
        $day = date("d");
        $msg = [];

        if($day<=25){
            $begin = $year.'-'.($mon-1).'-'.'26';
            $end = $year.'-'.($mon).'-'.'25';

        }else{
            $begin = $year.'-'.($mon).'-'.'26';
            $end = $year.'-'.($mon+1).'-'.'25';
        }
        $res = Db::query("select * from  (select job_id id ,nowday,rthour count,ocmtype ctype,begin_time begin,end_time end,type from think_hfm where  '$begin'<= nowday and  nowday<='$end' and job_id='$id' order by nowday asc)  as a union all select * from  (select job_id,nowday,rthour,ocmtype,begin_time,end_time,type from think_nfm where  '$begin'<= nowday and  nowday<='$end' and job_id='$id' order by nowday asc) as b  order by nowday asc");
        for($i=0;$i<count($res);$i++){
            if($res[$i]['ctype']==2){
                $res[$i]['ctype']='????????????';

            }else if($res[$i]['ctype']==3){
                $res[$i]['ctype']='?????????';
            }
        }
        // return json($res);
        $msg['code']=0;
        $msg['msg'] = '';
        $msg['count']=1;
        $msg['data'] = $res;

        return json($msg);

    }

    public function search_detail(Request $request){
        $date = $request->param()['date'];
        $id = $request->param()['id'];
        $ttpm = explode('-',$date);
        $turn1 = date_create($ttpm[0]);
        $turn2 = date_create($ttpm[1]);
        $begin = date_format($turn1,'Y-m-d');
        $end = date_format($turn2,'Y-m-d');
        $msg = [];
       // return json($id);

        $resa = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
            ->where('job_id','=',$id)->sum('rthour');//?????????
        $resb = Db::table('think_nfm')->whereBetween('nowday',$begin.','.$end)
            ->where('job_id','=',$id)->sum('rthour');

        $reshj = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'ocmtype'=>2])->sum('rthour');//????????????????????????
        $resnj = Db::table('think_nfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'ocmtype'=>2])->sum('rthour');//????????????????????????

        $reshb = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'ocmtype'=>3])->sum('rthour');//?????????????????????
        $resnb = Db::table('think_nfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'ocmtype'=>3])->sum('rthour');//????????????????????????

        $reshg = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
            ->where(['job_id'=>$id,'overtime_type'=>3])->sum('rthour');//???????????????

        //die();
        $res[0]['total'] = $resa+$resb;//?????????????????????0??????'fieldname'???,?????????????????????????????????
        $res[0]['obilling'] = $reshj+$resnj;
        $res[0]['off_day'] = $reshb+$resnb;
        $res[0]['hhour'] = $resa;
        $res[0]['nhour'] = $resb;
        $res[0]['nhhour'] = $reshg;


        $msg['code']=0;
        $msg['msg'] = '';
        $msg['count']=1;
        $msg['data'] = $res;

        return json($msg);
    }

    public function search_list(Request $request){
        $msg = [];
        $date = $request->param()['date'];
        $id = $request->param()['id'];
        $ttpm = explode('-',$date);
        $turn1 = date_create($ttpm[0]);
        $turn2 = date_create($ttpm[1]);
        $begin = date_format($turn1,'Y-m-d');
        $end = date_format($turn2,'Y-m-d');

        $res = Db::query("select * from  (select job_id id ,nowday,rthour count,ocmtype ctype,begin_time begin,end_time end,type from think_hfm where  '$begin'<= nowday and  nowday<='$end' and job_id='$id' order by nowday asc)  as a union all select * from  (select job_id,nowday,rthour,ocmtype,begin_time,end_time,type from think_nfm where  '$begin'<= nowday and  nowday<='$end' and job_id='$id' order by nowday asc) as b  order by nowday asc");
        //$res1 = Db::name('think_hfm')->getLastSql();
        for($i=0;$i<count($res);$i++){
            if($res[$i]['ctype']==2){
                $res[$i]['ctype']='????????????';

            }else if($res[$i]['ctype']==3){
                $res[$i]['ctype']='?????????';
            }
        }
      //  echo $res1;
        // return json($res);
        $msg['code']=0;
        $msg['msg'] = '';
        $msg['count']=1;
        $msg['data'] = $res;

        return json($msg);

    }

    public function emp_list(){
        $total =  Db::table('think_user')->count('username');//???????????????
        $msg = [];
        $page =  Request::instance()->param('page'); //????????????????????????????????????????????????
        $limit =  Request::instance()->param('limit');
        $tol=($page-1)*$limit;//??????????????????????????????
        $list = Db::table('think_user')
            ->field('id,Cname as name,employee_id as job_id, dept_name, DeptCode as dept_no,total')
            ->limit($tol,$limit)
            ->order('id','asc')
            ->select(); //????????????????????????????????????
        $msg['msg'] = '';
        $msg['code']=0;
        $msg['count']=$total;
        $msg['data'] = $list;

        return json($msg);
    }

    public function delete_user(Request $request){
        $table = $request->param()['table'];
        $id = $request->param()['id'];
        //return json($id);
        $res = Db::table($table)->where('id','=',$id)->delete();
        return json($res);
    }

    public function updateinfo(Request $request){
        $id = $request->param()['id'];
        //$page =  Request::instance()->param('page');???????????????????????????????????????
        $field = $request->param()['field'];
        $val = $request->param()['val'];
        if($val===''){
            $val=null;
        }
        if($field === 'dept_no'){
            $field='DeptCode';
        }else if($field === 'job_id'){
            $field='employee_id';
        }
        else if($field === 'name'){
            $field='Cname';
        }
       // return json($id);
        $res = Db::table('think_user')->where('id','in',$id)->update([$field => $val]);
        return json($res);
    }

    public  function useradd(Request $request){
        $data = [];
        $res = $request->param()['data'];
        for($i=0;$i<count($res);$i++){
            if($res[$i]['total']===''){
                $res[$i]['total']=null;
            }
            $data[] = ['username'=>$res[$i]['job_id'],'password'=>$res[$i]['job_id'],
                'create_time'=>date('Y-m-d H:i:s'),'employee_id'=>$res[$i]['job_id'],
                'Cname'=>$res[$i]['name'],'DeptCode'=>$res[$i]['deptcode'],'dept_name'=>$res[$i]['deptname'],
                'total'=>$res[$i]['total'],'pexport'=>0];
        }
        $res = Db::table('think_user')->insertAll($data);

       return json($res);
       // return json($res);
    }
 

    public  function appexport(Request $request){//??????Excel
        $xlsName  = "export";
        $res='';
        $rres = [];
        $id = $request->param()['id'];
        $formname='yb';
        $xlsCell  = array(
            array('job_id','??????(??????)'),
            array('dept_no','????????????(??????)'),
            array('name','??????(??????)'),
            array('overtime_type','????????????(??????)'),
            array('dntype','??????(??????)'),
            array('ocmtype','??????????????????(??????)'),
            array('nowday','???????????????(??????)'),
            array('begin_time','????????????(??????)'),
            array('end_time','????????????(??????)'),
            array('pthour','?????????????????????(??????)'),
            array('oreason','????????????(??????)'),
            array('project_no','????????????(??????)'),
        );
        $xlsData  = Db::table('think_afm')->Field('job_id,dept_no,name,overtime_type,dntype,ocmtype,nowday,begin_time,end_time,pthour,oreason,project_no')->order('nowday','asc')->where('eflag','=',0)->select();
        $this->exportExcel($xlsName,$xlsCell,$xlsData,$formname);
        if(count($xlsData)>0){
            $res = Db::table('think_afm')->where('id','in',$id)->update(['eflag'=>1]);
            if($res){
                $rres[0] = $res;
                $rres[1] =  $this->getexcel();

            }
        }
        return json($rres);
    }

    public  function bustexport(Request $request){//??????Excel
        $xlsName  = "export";
        $formname='gc';
        $res='';
        $rres = [];
        $id = $request->param()['id'];
        $xlsCell  = array(
            array('job_id','??????'),
            array('dept_no','????????????'),
            array('name','??????'),
            array('bdate','????????????'),
            array('begin_time','????????????'),
            array('end_time','????????????'),
            array('bday','????????????'),
            array('bthour','????????????'),
            array('baddress','????????????'),
            array('breason','????????????'),
        );
        $xlsData  = Db::table('think_bfm')->Field('job_id,dept_no,name,bdate,begin_time,end_time,bday,bthour,breason,baddress')->order('bdate','asc')->where('eflag','=',0)->select();
        $this->exportExcel($xlsName,$xlsCell,$xlsData,$formname);
        if(count($xlsData)>0){
            $res = Db::table('think_bfm')->where('id','in',$id)->update(['eflag'=>1]);
        
            if($res){
                $rres[0] = $res;
                $rres[1] =  $this->getexcel();

            }
        }
        return json($rres);
    }

    public  function hoverexport(Request $request){//??????Excel
        $xlsName  = "export";
        $formname='lj';
        $res='';
        $rres = [];
        $id = $request->param()['id'];
        $xlsCell  = array(
            array('job_id','??????(??????)'),
            array('dept_no','????????????(??????)'),
            array('name','??????(??????)'),
            array('overtime_type','????????????(??????)'),
            array('dntype','??????(??????)'),
            array('ocmtype','??????????????????(??????)'),
            array('nowday','???????????????(??????)'),
            array('begin_time','????????????(??????)'),
            array('end_time','????????????(??????)'),
            array('rthour','?????????????????????(??????)'),
            array('oreason','????????????(??????)'),
            array('project_no','????????????(??????)'),
        );
        $xlsData  = Db::table('think_hfm')->Field('job_id,dept_no,name,overtime_type,dntype,ocmtype,nowday,begin_time,end_time,rthour,oreason,project_no')->order('nowday','asc')->where('eflag','=',0)->select();
        $this->exportExcel($xlsName,$xlsCell,$xlsData,$formname);
        if(count($xlsData)>0){
            $res = Db::table('think_hfm')->where('id','in',$id)->update(['eflag'=>1]);
        
            if($res){
                $rres[0] = $res;
                $rres[1] =  $this->getexcel();

            } 
        }
        return json($rres);
    }

    public  function lfmexport(Request $request){//??????Excel
        $xlsName  = "export";
        $formname='qj';
        $res='';
        $rres = [];
        $id = $request->param()['id'];
        $xlsCell  = array(
            array('job_id','??????(??????)'),
            array('dept_no','????????????(??????)'),
            array('name','??????(??????)'),
            array('begin_time','????????????(??????)'),
            array('end_time','????????????(??????)'),
            array('lday','??????(??????)'),
            array('lhour','????????????(??????)'),
            array('reason','????????????(??????)'),
            array('htype','??????(??????)'),
            array('project_no','????????????(??????)'),
        );
        $xlsData  = Db::table('think_lfm')->Field('job_id,dept_no,name,begin_time,end_time,lday,lhour,reason,htype,project_no')->order('begin_time','asc')->where('eflag','=',0)->select();
        $this->exportExcel($xlsName,$xlsCell,$xlsData,$formname);
        if(count($xlsData)>0){
            $res = Db::table('think_lfm')->where('id','in',$id)->update(['eflag'=>1]);
            if($res){
                $rres[0] = $res;
                $rres[1] =  $this->getexcel();

            }
        
        }
        return json($rres);
    }

    public  function normexport(Request $request){//??????Excel
        $xlsName  = "export";
        $formname='ps';
        $res='';
        $rres = [];
        $id = $request->param()['id'];
        $xlsCell  = array(
            array('job_id','??????(??????)'),
            array('dept_no','????????????(??????)'),
            array('name','??????(??????)'),
            array('overtime_type','????????????(??????)'),
            array('ocmtype','??????????????????(??????)'),
            array('nowday','???????????????(??????)'),
            array('begin_time','????????????(??????)'),
            array('end_time','????????????(??????)'),
            array('rthour','????????????(??????)'),
            array('oreason','????????????(??????)'),
            array('project_no','????????????(??????)'),
        );
        $xlsData  = Db::table('think_nfm')->Field('job_id,dept_no,name,overtime_type,ocmtype,nowday,begin_time,end_time,rthour,oreason,project_no')->order('nowday','asc')->where('eflag','=',0)->select();
        $this->exportExcel($xlsName,$xlsCell,$xlsData,$formname);
        if(count($xlsData)>0){
            $res = Db::table('think_nfm')->where('id','in',$id)->update(['eflag'=>1]);
            if($res){
                $rres[0] = $res;
                $rres[1] =  $this->getexcel();

            }
           
        }

        return json($rres);
    }

    function exportExcel($expTitle,$expCellName,$expTableData,$formname){
       // $nowtime = date('His');
       $path = 'D:\eform';
       if(count(array_diff(scandir($path),array('..','.')))!=0){
        $this->deldir($path) ;
    }

        include_once EXTEND_PATH.'PHPExcel/PHPExcel.php';//?????????
        $xlsTitle = iconv('utf-8', 'gb2312', $expTitle);//????????????
        $fileName = $expTitle.date('_YmdHis');//or $xlsTitle ???????????????????????????????????????
        $cellNum = count($expCellName);
        $dataNum = count($expTableData);
       // $objPHPExcel = new PHPExcel();//?????????
        $objPHPExcel = new \PHPExcel();//?????????
        $cellName = array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','AA','AB','AC','AD','AE','AF','AG','AH','AI','AJ','AK','AL','AM','AN','AO','AP','AQ','AR','AS','AT','AU','AV','AW','AX','AY','AZ');
        $objPHPExcel->getActiveSheet(0)->mergeCells('A1:'.$cellName[$cellNum-1].'1');//???????????????
        $objPHPExcel->setActiveSheetIndex(0)->setCellValue('A1', $expTitle.'  Export time:'.date('Y-m-d H:i:s'));
        for($i=0;$i<$cellNum;$i++){
            $objPHPExcel->setActiveSheetIndex(0)->setCellValue($cellName[$i].'2', $expCellName[$i][1]);
        }
        // Miscellaneous glyphs, UTF-8
        for($i=0;$i<$dataNum;$i++){
            for($j=0;$j<$cellNum;$j++){
                $objPHPExcel->getActiveSheet(0)->setCellValue($cellName[$j].($i+3), $expTableData[$i][$expCellName[$j][0]]);
            }
        }
        ob_end_clean();//????????????????????????????????????????????????????????????excel??????
        header('pragma:public');
        header('Content-type:application/vnd.ms-excel;charset=utf-8;name="'.$xlsTitle.'.xls"');
        header("Content-Disposition:attachment;filename=$fileName.xls");//"xls"?????????????????????
        $objWriter = \PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');//"Excel2007"??????2007?????????xlsx???"Excel5"??????2003?????????xls
        //$objWriter->save('D:/eform/'.$formname.$nowtime.'.xls');
        $objWriter->save('D:/eform/'.$formname.'.xls');
        //$objWriter->save('D:/'.$formname.'/'.$formname.'.xls');

       // exit;
    }

    public function getexcel(){
        $tpath = 'D:/phpstudy/WWW/tp5/public/static/excelfile';
        $path = 'D:\eform';
        $file = scandir($path);
        if(count(array_diff(scandir($tpath),array('..','.')))!=0){
            $this->deldir($tpath) ;
        }
       


        for($j =2;$j<count($file);$j++){
            $tfile = $path.'/'.$file[$j];
            if( @copy($tfile,$tpath.'/'.$file[$j]) ){
                $download =  '/tp5/public/static/excelfile/'.$file[$j];
                return $download;
            }else{
                return 'merror';
            }
        }

    } 


    public function deldir($dir) {
        //??????????????????????????????
        $dh=opendir($dir);
        while ($file=readdir($dh)) {
            if($file!="." && $file!="..") {
                $fullpath=$dir."/".$file;
                if(!is_dir($fullpath)) {
                    unlink($fullpath);
                } else {
                    $this->deldir($fullpath) ;
                    rmdir($fullpath);
                }
            }
        }
        closedir($dh);

    }

    public function alterpassword(Request $request){
        $data = $request->param()['data'];
        $pass = $data[1];
        $job_id = $data[0];
        $res = '';
        if(isset($pass)){
            $res = Db::table('think_user')->where('employee_id','=',$job_id)->update(['password'=>$pass]);
        }
        if($res){
            return json($res);
        }else{
            return json('err');
        }
    }

    public function allshow(){
        $year = date('Y');
        $mon = date("m");
        $day = date("d");
        $msg = [];

        if($day<=25){
            $begin = $year.'-'.($mon-1).'-'.'26';
            $end = $year.'-'.($mon).'-'.'25';

        }else{
            $begin = $year.'-'.($mon).'-'.'26';
            $end = $year.'-'.($mon+1).'-'.'25';
        }

        $tres = Db::query("select  t1.job_id as employee_id,t1.name, SUM(t1.rthour) as htotal, t1.ocmtype,(t2.rthour) as ntotal from think_hfm t1 left join (select job_id,name,SUM(rthour) as rthour,ocmtype from think_nfm where ocmtype=2 and   nowday  between  '$begin' and '$end' group by job_id ) t2 on  t1.job_id=t2.job_id where t1.nowday  between  '$begin' and '$end'      GROUP BY t1.job_id  ");
        //return json($tres);
        $tres[0]['total'] = 0;
        for($i=0;$i<count($tres);$i++){
            if($tres[$i]['htotal']===null){
                $tres[$i]['htota']=0;

            }else if($tres[$i]['ntotal']===null){
                $tres[$i]['ntotal']=0;
            }
            $tres[$i]['ttotal'] = $tres[$i]['htotal']+$tres[$i]['ntotal'];
            $tres[0]['total'] +=$tres[$i]['ttotal'];
        }

        $stotal = Db::table('think_user')->sum('total');
        $tres[0]['stotal'] = $stotal;

        // $resa = Db::table('think_hfm')->whereBetween('nowday',$begin.','.$end)
        // ->where('job_id','=',$id)->sum('rthour');//?????????

       // return json($tres);


        // $res[0]['total'] = $resa+$resb;//?????????????????????0??????'fieldname'???,?????????????????????????????????



        $msg['code']=0;
        $msg['msg'] = '';
        $msg['count']=1;
        $msg['data'] = $tres;

        return json($msg);
    }




}