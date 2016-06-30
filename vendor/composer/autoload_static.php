<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit488c9f4583d198cccdb804d9bcdc5843
{
    public static $files = array (
        '0e6d7bf4a5811bfa5cf40c5ccd6fae6a' => __DIR__ . '/..' . '/symfony/polyfill-mbstring/bootstrap.php',
    );

    public static $prefixLengthsPsr4 = array (
        'S' => 
        array (
            'Symfony\\Polyfill\\Mbstring\\' => 26,
            'Symfony\\Component\\Translation\\' => 30,
        ),
        'C' => 
        array (
            'Carbon\\' => 7,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'Symfony\\Polyfill\\Mbstring\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/polyfill-mbstring',
        ),
        'Symfony\\Component\\Translation\\' => 
        array (
            0 => __DIR__ . '/..' . '/symfony/translation',
        ),
        'Carbon\\' => 
        array (
            0 => __DIR__ . '/..' . '/nesbot/carbon/src/Carbon',
        ),
    );

    public static $prefixesPsr0 = array (
        'o' => 
        array (
            'org\\bovigo\\vfs' => 
            array (
                0 => __DIR__ . '/..' . '/mikey179/vfsStream/src/main/php',
            ),
        ),
    );

    public static $classMap = array (
        'Eventviva\\ImageResize' => __DIR__ . '/..' . '/eventviva/php-image-resize/src/ImageResize.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit488c9f4583d198cccdb804d9bcdc5843::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit488c9f4583d198cccdb804d9bcdc5843::$prefixDirsPsr4;
            $loader->prefixesPsr0 = ComposerStaticInit488c9f4583d198cccdb804d9bcdc5843::$prefixesPsr0;
            $loader->classMap = ComposerStaticInit488c9f4583d198cccdb804d9bcdc5843::$classMap;

        }, null, ClassLoader::class);
    }
}