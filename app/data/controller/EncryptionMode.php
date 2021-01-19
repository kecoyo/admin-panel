<?php

namespace app\data\controller;

use think\admin\Controller;
use think\admin\extend\DataExtend;

/**
 * 加密方式管理
 * Class EncryptionMode
 * @package app\data\controller
 */
class EncryptionMode extends Controller
{
    /**
     * 绑定数据表
     * @var string
     */
    private $table = 'DataEncryptionMode';

    /**
     * 加密方式管理
     * @auth true
     * @menu true
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function index()
    {
        $this->title = "加密方式管理";
        $query = $this->_query($this->table)->like('name')->dateBetween('create_at');
        $query->equal('status')->where(['is_deleted' => 0])->order('sort desc,id desc')->page(false);
    }

    /**
     * 添加加密方式
     * @auth true
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function add()
    {
        $this->_form($this->table, 'form');
    }

    /**
     * 编辑加密方式
     * @auth true
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\DbException
     * @throws \think\db\exception\ModelNotFoundException
     */
    public function edit()
    {
        $this->_form($this->table, 'form');
    }

    /**
     * 删除加密方式
     * @auth true
     * @throws \think\db\exception\DbException
     */
    public function remove()
    {
        $this->_delete($this->table);
    }

    /**
     * 修改加密方式状态
     * @auth true
     * @throws \think\db\exception\DbException
     */
    public function state()
    {
        $this->_save($this->table, $this->_vali([
            'status.in:0,1'  => '状态值范围异常！',
            'status.require' => '状态值不能为空！',
        ]));
    }
}
