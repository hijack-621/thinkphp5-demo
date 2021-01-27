<?php
namespace app\index\controller;
use think\Controller;
use think\Db;




class Index extends Controller
{
    public function login(){
        return $this->fetch('login');
    }
    public function viceindex(){
        return $this->fetch('viceindexpage');
    }
    public function index()
    {
        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
        $welldone = Db::name('info')->where('all_status','=',3)->count();
        $this->assign([
            'pend'=>$pend,
            'welldone'=>$welldone,
        ]);
        return $this->fetch('indexpage');

    }
    public function tindex()
    {
        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
        $welldone = Db::name('info')->where('all_status','=',3)->count();
        $this->assign([
            'pend'=>$pend,
            'welldone'=>$welldone,
        ]);
        return $this->fetch('indexpagetnb');

    }
    public function signinfo()
    {
        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
        $welldone = Db::name('info')->where('all_status','=',3)->count();
        $this->assign([
            'pend'=>$pend,
            'welldone'=>$welldone,
        ]);
        return $this->fetch('signinfo');

    }
    public function progress()
    {
        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
        $welldone = Db::name('info')->where('all_status','=',3)->count();
        $this->assign([
            'pend'=>$pend,
            'welldone'=>$welldone,
        ]);
        return $this->fetch('progress');

    }
    public function endsigninfo()
    {
        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
        $welldone = Db::name('info')->where('all_status','=',3)->count();
        $this->assign([
            'pend'=>$pend,
            'welldone'=>$welldone,
        ]);
        return $this->fetch('endsigninfo');

    }
    public function signpage(){
        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
        $welldone = Db::name('info')->where('all_status','=',3)->count();
        $this->assign([
            'pend'=>$pend,
            'welldone'=>$welldone,
        ]);
        return $this->fetch('signpage');
    }
    public function signlayer(){

//        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
//        $welldone = Db::name('info')->where('all_status','=',3)->count();
//        $this->assign([
//            'pend'=>$pend,
//            'welldone'=>$welldone,
//        ]);
        return $this->fetch('signlayer');
    }
    public function vicepagelayer(){
        return $this->fetch('vicelayer');
        }
    public function logsearch(){
        $pend = Db::name('info')->where('all_status','in',[0,1])->count();
        $welldone = Db::name('info')->where('all_status','=',3)->count();
        $this->assign([
            'pend'=>$pend,
            'welldone'=>$welldone,
        ]);
        return $this->fetch('log-search');
    }
    public function sdlog(){
        return $this->fetch('log-download');
    }

    public function tip(){
        return $this->fetch('tip');
    }

    public function tnbreport(){
        return $this->fetch('tnbimagesindex');
    }

}



