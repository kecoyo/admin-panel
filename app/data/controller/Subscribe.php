<?php

namespace app\data\controller;

use think\admin\Controller;
use think\admin\storage\LocalStorage;

/**
 * 配置订阅
 * Class Subscribe
 * @package app\data\controller
 */
class Subscribe extends Controller
{

    /**
     * 订阅默认配置
     * @throws \think\admin\Exception
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function index($uuid)
    {
        // 获取当前用户，未找到返回错误。
        $user = $this->app->db->name('SystemUser')->where(['uuid' => $uuid])->find();
        if (empty($user)) return $this->error('用户配置不存在！');

        // 获取所有可用服务器
        $servers = $this->app->db->name('DataServer')->where(['is_deleted' => 0, 'status' => 1])->order('sort desc,id desc')->select()->toArray();

        // 模板生成文件内容
        $template = realpath(__DIR__ . '/../view/subscribe/index.yml');
        $content = view($template, [
            'servers' => $servers,
            'user' => $user,
        ])->getContent();

        return download($content, 'myconf.yml', true);
    }
}
