<?php
/**
 * Created by PhpStorm.
 * User: Iori
 * Date: 2020/7/6
 * Time: 8:51
 */
namespace app\index\controller;
use think\Controller;
use app\index\model\Itform as im;
use app\index\model\Info ;
use think\Db;
use think\Request;
use Twig\Node\Expression\Binary\DivBinary;
use think\Session;

class Itform extends Controller{
    public function  add(Request $request){

        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
        $welldone = Db::name('info')->where('all_status','=',3)->count();
        $this->assign([
            'pend'=>$pend,
            'welldone'=>$welldone,
        ]);
        return $this->fetch('add');


    }

    public function addinfo(Request $request){
        $data = [];
        //dump($request->param());
        if($request->isPost()) {
            if (count($request->param()['fd']) == 8) {
                $data = [
                    'scheme' => $request->param()['fd']['scheme'],
                    'title' => $request->param()['fd']['title'],
                    'password' => $request->param()['fd']['password'],
                    'city' => $request->param()['fd']['city'],
                    'fond' => (isset($request->param()['fd']['like1'])?$request->param()['fd']['like1']:'none'),
                    'switch' => $request->param()['fd']['switch'],
                    'sex' => $request->param()['fd']['sex'],
                    'textarea' => $request->param()['fd']['desc'],
                ];
            } else if (count($request->param()['fd']) == 9) {

                $data = [
                    'scheme' => $request->param()['fd']['scheme'],
                    'title' => $request->param()['fd']['title'],
                    'password' => $request->param()['fd']['password'],
                    'city' => $request->param()['fd']['city'],
                    'fond' => $request->param()['fd']['like1'] . ',' . $request->param()['fd']['like2'],
                    'switch' => $request->param()['fd']['switch'],
                    'sex' => $request->param()['fd']['sex'],
                    'textarea' => $request->param()['fd']['desc'],
                ];
            } else if (count($request->param()['fd']) == 10) {

                $data = [
                    'scheme' => $request->param()['fd']['scheme'],
                    'title' => $request->param()['fd']['title'],
                    'password' => $request->param()['fd']['password'],
                    'city' => $request->param()['fd']['city'],
                    'fond' => $request->param()['fd']['like1'] . ',' . $request->param()['fd']['like2'] . ',' . $request->param()['fd']['like3'],
                    'switch' => $request->param()['fd']['switch'],
                    'sex' => $request->param()['fd']['sex'],
                    'textarea' => $request->param()['fd']['desc'],
                ];
            }
        }
             // $res =Db::name('itform')->insert($data);//没问题

            $itform= new im;
            $itform->scheme = $data['scheme'];
            $itform->title = $data['title'];
            $itform->password = $data['password'];
            $itform->city = $data['city'];
            $itform->fond =$data['fond'];
            $itform->switch = $data['switch'];
            $itform->sex = $data['sex'];
            $itform->textarea = $data['textarea'];


            //echo $addform->switch;
             //return json_encode($data);
            if($itform->save()){
                $Info['plan_name'] =  $itform->scheme;
                $Info['launcher'] =  $itform->title;
                $Info['launch_time'] = date('Y-m-d H:i:s');
                $Info['checker1'] = 'Bruce';
                $Info['status1'] = 0;
                $Info['checker2'] = 'Nic';
                $Info['status2'] = 0;
                $itform->info()->save($Info);
                return 1;
            }else{
                return 0;
            }


    }
    public function rdata()
    {
        $msg = '';

        $hid0 = [];
        $hid1 = [];
        $hid3 = [];
        $res = [];
        $tb = db('itform');
        $sid = Db::name('info')->field('itform_id,all_status')->select();
        //dump($sid) ;
        for ($c = 0; $c < count($sid); $c++) {

            if ($sid[$c]['all_status'] == 0) {
                // echo '111';
                array_push($hid0, $sid[$c]['itform_id']);
            } elseif ($sid[$c]['all_status'] == 1) {
                // echo '111';
                array_push($hid1, $sid[$c]['itform_id']);
            } elseif ($sid[$c]['all_status'] == 3) {
                //   echo '111';
                array_push($hid3, $sid[$c]['itform_id']);
            }

        }
        if (count($hid0)) {

            $res0 = $tb->field('id,scheme,title,password,city')->where('id', 'in', $hid0)->select();

            //dump ($res0);
            for ($i0 = 0; $i0 < count($res0); $i0++) {
                $res0[$i0]['checker'] = 'bruce' . ',' . 'nic';
                //$res0[$i0]['checker2']='nic';
                array_push($res, $res0[$i0]);
            }
            // dump($res);

        }
        if (count($hid1)) {
            //echo 1;
            Db::table('think_itform')->where('id', 'in', $hid1)->update(['checker1' => 'bruce']);
            //Db::table('think_itform')->insert(['checker1'=>'bruce','checker2'=>'nic']);
            $res1 = $tb->field('id,scheme,title,password,city')->where('id', 'in', $hid1)->select();
            //dump($res1);
            for ($i0 = 0; $i0 < count($res1); $i0++) {
                // $res1[$i0]['checker1']='bruce';
                $res1[$i0]['checker'] = 'nic';
                array_push($res, $res1[$i0]);
            }
        }
        if (count($hid3)) {
            Db::table('think_itform')->where('id', 'in', $hid3)->update(['checker1' => 'bruce', 'checker2' => 'nic']);
        }

        //dump($res);


        $ldata = array(
            'code' => 0,
            'msg' => $msg,
            'count' => 6,
            'data' => $res,
        );

        return json($ldata);
    }
    public function edata()
    {
        $msg = '';
        $hid3 = [];

        $res = [];
        $tb = db('itform');
        $sid = Db::name('info')->field('itform_id,all_status')->select();
        //dump($sid) ;
        for ($c = 0; $c < count($sid); $c++) {

            if ($sid[$c]['all_status'] == 3) {
                //   echo '111';
                array_push($hid3, $sid[$c]['itform_id']);
            }

        }

        if (count($hid3)) {

            //Db::table('think_itform')->insert(['checker1'=>'bruce','checker2'=>'nic']);
            $res = $tb->field('id,scheme,title,password,city')->where('id', 'in', $hid3)->select();
            for($i=0;$i<count($res);$i++){
                $res[$i]['checker'] = '签核完毕';
            }


        }

        //dump($res);


        $ldata = array(
            'code' => 0,
            'msg' => $msg,
            'count' => 6,
            'data' => $res,
        );

        return json($ldata);
    }
    public  function signpage(Request $request){
      $id = $request->param()['id'];
      $msg = [];
      $tb = db('itform');
      $res = $tb->field('id,scheme,title,password,checker1,checker2,checkinfo')->where('id','=',$id)->select();
      if(!strpos($res[0]['checkinfo'],'&')){
          $check1 = $res[0]['checker1'];
          $check2 = $res[0]['checker2'] ;
          //echo $check2.'aaa';
          if($check1==''){
              $res[0]['rcheck']='bruce'.','.'nic';

          }elseif ($check1!=''&&$check2==''){
              $res[0]['rcheck']='nic';
          }
          if($id){
              $msg['code']=0;
              $msg['msg'] = '';
              $msg['count']=1;
              $msg['data']=$res;

          }
      }else{
          $res[0]['rcheck'] = '目前无后续签核';
          $res[0]['echeck'] = $res[0]['checkinfo'];
          if($id){
              $msg['code']=0;
              $msg['msg'] = '';
              $msg['count']=1;
              $msg['data']=$res;

          }
      }

      return json($msg);
     // dump($res);
        //echo ($request->param()['id']);
        //return json($request->post());

    }
    public function signresult(Request $request)
    {
        $id = $request->param()['id'];
        $s1 = 0;
        $s2 = 0;
        $alls=0;
        $db = db('itform');
        $db2 = db('info');
        $check = $request->param()['res'][0] . ':' . $request->param()['res'][1];
        $tb = db('itform');
        $res = $tb->field('checkinfo')->where('id', '=', $id)->select();

        //return $res;
        if ($id) {
            if ($res[0]['checkinfo'] == '') {
                $upset = $db->where('id', $id)->update(['checkinfo' => $check, 'checker1' => $request->param()['res'][0]]);
                if ($upset) {
                    $s1 += 1;
                    $supset =  $db2->where('itform_id', $id)->update(['status1' => $s1]);
                    return $supset;
                }

//                $upset = Db::table('think_itform')
//                    ->where('id',$id)
//                    ->update(['check'=>$check]);
//                return  json($upset);
            } else {

                $sql = "UPDATE think_itform SET checkinfo=CONCAT(checkinfo,'&$check')WHERE id=$id";

                $upres = $tb->execute($sql);
                if($upres){
                    $s2 += 2;
                   $s2upset =  $db2->where('itform_id', $id)->update(['status2' => $s2]);
                    if($s2upset){
                        $rn =  $db2->where('itform_id', $id)->update(['all_status' => 3]);
                        return $rn;
                    }
                }
            }


        }else{
            return 'error';
        }

    }
    public  function showsign(Request $request){

    }
    public function jlogin(Request $request){ //登录判断
        $data = $request->param();
        $username = $data['username'];
        Session::set('username',$username);
        $password= $data['password'];
        $db = db('user');
        $res = $db->field('username,password,employee_id,Cname,DeptCode,dept_name,pexport')->where(['username'=>$username,'password'=>$password])->select();
        //return json($res);
        if(count($res)>0){
            Session::set('employee_id',$res[0]['employee_id']);
            Session::set('Cname',$res[0]['Cname']);
            Session::set('DeptCode',$res[0]['DeptCode']);
            Session::set('Cdept',$res[0]['dept_name']);
            Session::set('pexport',$res[0]['pexport']);
            return json('1');


        }else{
            return json('error');
        }


    }
    public function log_search(Request $request){
        $data = $request->param()['data'];
        $date = $request->param()['date'];
        $tpr = $data['TPR'];
        $table = $tpr.'_testlog';
        if(empty($date)&&empty($data['Model'])){
           // return json('kong date');

           $result = Db::connect('compaluser')->query("select TPR,SN,Station,Date,model,pn from $table");
           return json($result);

        }else if(empty($date)&&!empty($data['Model'])){
            $result = Db::connect('compaluser')->query("select TPR,SN,Station,Date,model,pn from $table where model='$model' ");
            return json($result);
        }
        
        //return json($date);
        $ttpm = explode('-',$date);
        $turn1 = date_create($ttpm[0]);
        $turn2 = date_create($ttpm[1]);
        $btime = date_format($turn1,'Y-m-d H:i:s');
        $etime = date_format($turn2,'Y-m-d H:i:s');
        //return json($btime);


        //return json($ttpm);
       
        $model=$data['Model'];
       
        if($model=='pcm'){

            $result = Db::connect('compaluser')->query("select TPR,SN,Station,Date,model,pn from $table where Date>='$btime' and Date<='$etime'");
            return json($result);

        }else{

            $result = Db::connect('compaluser')->query("select TPR,SN,Station,Date,model,pn from $table where Date>='$btime' and Date<='$etime' and model='$model'");
            //die("select TPR,PPID,Station,Date,model,pn from $table where Date>='$btime' and Date<='$etime' and model='$model'");
            return json($result);

        }

    }
    public function tnb_report(Request $request){
        $data = $request->param()['data'];
       // $path = 'D:\phpStudy\WWW\SOP\py\model1.py';
        //header('Content-type:text/html;charset=utf-8');
      
        //return json($result);
       // return json($data);
        switch ($data) {
            case 'model':
              $result = Db::connect('compaluser')->query("select distinct MODEL from tnblog");
             
              return json($result);
              // $result1 = exec('python D:\phpStudy\WWW\model.py ');
              break;
            case 'pn':
              $model = $request->param()['model'];
              $result = Db::connect('compaluser')->query("select distinct PN from tnblog WHERE MODEL='$model' ");
              //dump($result);
              array_unshift($result,'PN' );
             
              return json($result);
             
              break;
           
          }
         
    }
    public function execpy(){
        exec('python D:\phpStudy\WWW\model.py');
        return json('1');
    }



    public function retnone(){
        $code =array(
            'code' => 0,
            'msg' => '',
            'count' => 6,
            'data' => '',
        );
        return json($code);
    }
    public function getModel(){
        $res = Db::connect('compaluser')->query('select distinct Model  from tnb_testlog where model is not null');
        return json($res);
    }
    public function getppid(Request $request){
        header("Content-type: application/json; charset=utf-8");
        $field = $request->param()['field'];
        $tpr = $field['TPR'];
        $ppid = $field['PPID'];
        $btime = $field['bdate'];
        $etime = $field['edate'];
        $table = $tpr.'_testlog';

        $tpath="D:/phpstudy/WWW/tp5/public/static/tempfile";

        if(empty($btime)&&empty($etime)){
            $res = Db::connect('compaluser')->query("select Id,Station,Date from $table where SN='$ppid'");
            //die("select Station,Date from $table where PPID='$ppid'");
        }else if(empty($etime)){
            $res = Db::connect('compaluser')->query("select  Id,Station,Date from $table where SN='$ppid' and Date>='$btime'");
        }
        else if(empty($btime)){
            $res = Db::connect('compaluser')->query("select  Id,Station,Date from $table where SN='$ppid' and Date<='$etime'");
        }
        else{
            $res = Db::connect('compaluser')->query("select  Id,Station,Date from $table where SN='$ppid' and Date>='$btime' and Date<='$etime'");
        }

        if(count(array_diff(scandir($tpath),array('..','.')))!=0){
            $this->deldir($tpath) ;
        }

        for($i=0;$i<count($res);$i++){
            $res[$i]['Type'] = 'testlog';

            if(!file_exists($tpath.'/'.$res[$i]['Id'])){
                mkdir($tpath.'/'.$res[$i]['Id'],0777,true);

            }
                $path = 'D:\cgs\TNB_Testlog'.'/'.$res[$i]['Date'];
                $file = scandir($path);
                for($j =2;$j<count($file);$j++){
                    if(basename($file[$j],'.txt')==$ppid){
                        $tpfile = $path.'/'.$file[$j];
                        //$path="../../../public/static/tempfile";//相对路径有问题！！！tp中所有的文件都是相当于入口文件而言的
                        if(@copy($tpfile,$tpath.'/'.$res[$i]['Id'].'/'.$ppid.'.txt')  ){
                            $res[$i]['download'] = '/tp5/public/static/tempfile/'.$res[$i]['Id'].'/'.$ppid.'.txt';

                        }else{
                            $res[$i]['download']='not upload';
                        }
                        break;
                    }else{
                        $res[$i]['download']='not upload';
                    }
                }





        }
        return json($res);

       // return json(basename($file[2],'.log'));//basename($file[2],'.log')显示不带有后缀名的文件名！！！
    }
   public function deldir($dir) {
        //先删除目录下的文件：
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



}
