<?php

namespace humhub\commands;

use yii\console\Controller;

class DbController extends Controller
{
    public $dbName = 'humhub';

    public function actionCreate()
    {
        \Yii::$app->db->createCommand(
            "CREATE DATABASE $this->dbName CHARACTER SET 'utf8' COLLATE 'utf8_general_ci'"
        )->execute();

        \Yii::$app->db->createCommand(
            "USE $this->dbName"
        )->execute();

        $dump = file_get_contents(dirname(__FILE__) . '/dump.sql');
        \Yii::$app->db->createCommand($dump)->execute();
    }
}
