<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit4f89fd0e0503ccf740f2fa5757825d7b
{
    public static $files = array (
        '9b552a3cc426e3287cc811caefa3cf53' => __DIR__ . '/..' . '/topthink/think-helper/src/helper.php',
        '8dafcc6956460bc297e00381fed53e11' => __DIR__ . '/..' . '/zoujingli/think-library/src/common.php',
    );

    public static $prefixLengthsPsr4 = array (
        't' => 
        array (
            'think\\view\\driver\\' => 18,
            'think\\admin\\' => 12,
            'think\\' => 6,
        ),
        'a' => 
        array (
            'app\\' => 4,
        ),
        'W' => 
        array (
            'WePay\\' => 6,
            'WeMini\\' => 7,
            'WeChat\\' => 7,
        ),
        'S' => 
        array (
            'Symfony\\Component\\OptionsResolver\\' => 34,
        ),
        'P' => 
        array (
            'Psr\\SimpleCache\\' => 16,
            'Psr\\Log\\' => 8,
            'Psr\\Container\\' => 14,
            'Psr\\Cache\\' => 10,
        ),
        'L' => 
        array (
            'League\\MimeTypeDetection\\' => 25,
            'League\\Flysystem\\Cached\\' => 24,
            'League\\Flysystem\\' => 17,
        ),
        'E' => 
        array (
            'Endroid\\QrCode\\' => 15,
        ),
        'A' => 
        array (
            'AliPay\\' => 7,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'think\\view\\driver\\' => 
        array (
            0 => __DIR__ . '/..' . '/topthink/think-view/src',
        ),
        'think\\admin\\' => 
        array (
            0 => __DIR__ . '/..' . '/zoujingli/think-library/src',
        ),
        'think\\' => 
        array (
            0 => __DIR__ . '/..' . '/topthink/framework/src/think',
            1 => __DIR__ . '/..' . '/topthink/think-helper/src',
            2 => __DIR__ . '/..' . '/topthink/think-template/src',
            3 => __DIR__ . '/..' . '/topthink/think-orm/src',
        ),
        'app\\' => 
        array (
            0 => __DIR__ . '/../..' . '/app',
        ),
        'WePay\\' => 
        array (
            0 => __DIR__ . '/..' . '/zoujingli/wechat-developer/WePay',
        ),
        'WeMini\\' => 
        array (
            0 => __DIR__ . '/..' . '/zoujingli/wechat-developer/WeMini',
        ),
        'WeChat\\' => 
        array (
            0 => __DIR__ . '/..' . '/zoujingli/wechat-developer/WeChat',
        ),
        'Symfony\\Component\\OptionsResolver\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/options-resolver',
        ),
        'Psr\\SimpleCache\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/simple-cache/src',
        ),
        'Psr\\Log\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/log/Psr/Log',
        ),
        'Psr\\Container\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/container/src',
        ),
        'Psr\\Cache\\' => 
        array (
            0 => __DIR__ . '/..' . '/psr/cache/src',
        ),
        'League\\MimeTypeDetection\\' => 
        array (
            0 => __DIR__ . '/..' . '/league/mime-type-detection/src',
        ),
        'League\\Flysystem\\Cached\\' => 
        array (
            0 => __DIR__ . '/..' . '/league/flysystem-cached-adapter/src',
        ),
        'League\\Flysystem\\' => 
        array (
            0 => __DIR__ . '/..' . '/league/flysystem/src',
        ),
        'Endroid\\QrCode\\' => 
        array (
            0 => __DIR__ . '/..' . '/endroid/qr-code/src',
        ),
        'AliPay\\' => 
        array (
            0 => __DIR__ . '/..' . '/zoujingli/wechat-developer/AliPay',
        ),
    );

    public static $fallbackDirsPsr0 = array (
        0 => __DIR__ . '/../..' . '/extend',
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
        'Ip2Region' => __DIR__ . '/..' . '/zoujingli/ip2region/Ip2Region.php',
        'We' => __DIR__ . '/..' . '/zoujingli/wechat-developer/We.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit4f89fd0e0503ccf740f2fa5757825d7b::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit4f89fd0e0503ccf740f2fa5757825d7b::$prefixDirsPsr4;
            $loader->fallbackDirsPsr0 = ComposerStaticInit4f89fd0e0503ccf740f2fa5757825d7b::$fallbackDirsPsr0;
            $loader->classMap = ComposerStaticInit4f89fd0e0503ccf740f2fa5757825d7b::$classMap;

        }, null, ClassLoader::class);
    }
}
