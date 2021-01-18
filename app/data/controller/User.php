<?php

namespace app\data\controller;

use think\admin\Controller;
use think\admin\storage\LocalStorage;

/**
 * 用户配置
 * Class Config
 * @package app\data\controller
 */
class User extends Controller
{

    /**
     * 用户信息
     * @auth true
     * @menu true
     * @throws \think\admin\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function index()
    {
        if ($this->request->isGet()) {
            $this->title = '用户信息';
            $local = LocalStorage::instance();
            $this->mch_ssl_cer = sysconf('wechat.mch_ssl_cer');
            $this->mch_ssl_key = sysconf('wechat.mch_ssl_key');
            $this->mch_ssl_p12 = sysconf('wechat.mch_ssl_p12');
            if (!$local->has($this->mch_ssl_cer, true)) $this->mch_ssl_cer = '';
            if (!$local->has($this->mch_ssl_key, true)) $this->mch_ssl_key = '';
            if (!$local->has($this->mch_ssl_p12, true)) $this->mch_ssl_p12 = '';

            $this->thrNotify = 'https://v6.thinkadmin.top/wechat/api.push';
            $this->fetch();
        } else {
            $this->error('抱歉，数据提交地址错误！');
        }
    }

}
