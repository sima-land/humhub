<?php

namespace humhub\commands;

use yii\console\Controller;

/**
 * Операции с БД.
 */
class DbController extends Controller
{
    /**
     * Создает БД и заполняет ее демонстрационными данными.
     */
    public function actionCreate()
    {
        $dump = file_get_contents(dirname(__FILE__) . '/dump.sql');
        \Yii::$app->db->createCommand($dump)->execute();
    }
}
