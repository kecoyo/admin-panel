
<?php

use think\facade\Route;

// 注册路由到News控制器的read操作
Route::rule('subscribe/:uuid', 'Subscribe/index');
