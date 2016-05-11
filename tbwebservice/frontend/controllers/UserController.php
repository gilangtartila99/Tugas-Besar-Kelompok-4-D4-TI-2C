<?php
namespace frontend\controllers;

use Yii;
use yii\rest\ActiveController;
use frontend\models\SignupForm;
use yii\base\ErrorException;

class UserController extends ActiveController
{
    public $modelClass = 'common\models\User';

    public function actions()
    {
    	$actions = parent::actions();
    	//unset($actions['create']);
    	return $actions;
    }

    public function actionCreate()
    {
    	$model = new SignupForm();
        if ($model->load(Yii::$app->getRequest()->getBodyParams(), '')) {
            if ($user = $model->signup()) {
                    throw new ErrorException();
            }
        }
        return $model;
    }

}
?>