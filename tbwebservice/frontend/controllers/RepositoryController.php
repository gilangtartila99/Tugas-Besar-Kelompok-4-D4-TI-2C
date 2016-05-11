<?php
namespace frontend\controllers;

use Yii;
use frontend\models\Repository;
use yii\rest\ActiveController;


class RepositoryController extends ActiveController
{
    public $modelClass = 'frontend\models\Repository';

    public function actions()
    {
        $actions = parent::actions();
        //unset($actions['create']);
        return $actions;
    }

    public function actionCreate()
    {
        $model = new Repository();
        if ($model->load(Yii::$app->getRequest()->getBodyParams(), '')) {
            if ($user = $model->id) {
            }
        }
        return $model;
    }
}
