<?php return array(
    'components' =>
        array(
            'db' =>
                array(
                    'class' => 'yii\\db\\Connection',
                    'dsn' => 'mysql:host=mysql;dbname=humhub',
                    'username' => 'root',
                    'password' => '123',
                    'charset' => 'utf8',
                    'on afterOpen' => function ($event) {
                        $event->sender->createCommand("SET sql_mode = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION'")->execute();
                    },
                ),
            'user' =>
                array(),
            'mailer' =>
                array(
                    'transport' =>
                        array(
                            'class' => 'Swift_MailTransport',
                        ),
                    'view' =>
                        array(
                            'theme' =>
                                array(
                                    'name' => 'HumHub',
                                    'basePath' => '/var/www/html/themes/HumHub',
                                    'publishResources' => false,
                                ),
                        ),
                ),
            'cache' =>
                array(
                    'class' => 'yii\\caching\\FileCache',
                    'keyPrefix' => 'humhub',
                ),
            'view' =>
                array(
                    'theme' =>
                        array(
                            'name' => 'HumHub',
                            'basePath' => '/var/www/html/themes/HumHub',
                            'publishResources' => false,
                        ),
                ),
        ),
    'params' =>
        array(
            'installer' =>
                array(
                    'db' =>
                        array(
                            'installer_hostname' => 'mysql',
                            'installer_database' => 'humhub',
                        ),
                ),
            'config_created_at' => 1480913129,
            'horImageScrollOnMobile' => '1',
            'databaseInstalled' => true,
            'installed' => true,
        ),
    'name' => 'MySimaLand',
    'language' => 'en-US',
); ?>