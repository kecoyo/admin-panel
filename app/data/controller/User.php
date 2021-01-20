<?php

namespace app\data\controller;

use think\admin\Controller;
use think\admin\storage\LocalStorage;

/**
 * 用户信息
 * Class User
 * @package app\data\controller
 */
class User extends Controller
{

    /**
     * 服务器配置
     * @auth true
     * @menu true
     * @throws \think\admin\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function server()
    {
        if ($this->request->isGet()) {
            $this->title = '服务器配置';
            $this->encryption_mode = $this->app->db->name('DataEncryptionMode')->where(['id' => session('user.encryption_mode')])->find();
            echo '<pre>'.print_r($this->encryption_mode,true).'</pre>';
            $this->fetch();
        } else {
            $this->error('抱歉，数据提交地址错误！');
        }
    }

}
