<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use vova07\imperavi\Widget;
use yii\helpers\Url;
use yii\captcha\Captcha;

/* @var $this yii\web\View */
/* @var $model app\models\News */
/* @var $form yii\widgets\ActiveForm */


$this->title = 'Create News Article';
$this->params['breadcrumbs'][] = ['label' => 'Dashboard', 'url' => ['dashboard']];
$this->params['breadcrumbs'][] = 'Create';
?>

<div class="news-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="news-form">
        <div class="clearfix"><br/></div>
        <?php $form = ActiveForm::begin(['options' => ['enctype' => 'multipart/form-data']]); ?>

        <?=$form->errorSummary($model);?>

        <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'img')->fileInput() ?>

        <?= $form->field($model, 'body')->widget(Widget::className(), [
            'settings' => [
                'lang' => 'en',
                'minHeight' => 200,
                'imageManagerJson' => Url::to(['/news/images-get']),
                'imageUpload' => Url::to(['/news/image-upload']),
                'plugins' => [
                    'fullscreen',
                    'imagemanager'
                ]
            ]
        ]);
        ?>



        <div class="row">
        <div class="col-lg-5">
        <?= $form->field($model, 'verifyCode')->widget(Captcha::className(), [
            'template' => '<div class="row">
                            <div class="col-lg-3">{image}</div>
                            <div class="col-lg-6">{input}</div>
                            </div>'
        ])  ?>
            </div>
        </div>

        <div class="form-group">
            <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        </div>

        <?php ActiveForm::end(); ?>

    </div>

</div>