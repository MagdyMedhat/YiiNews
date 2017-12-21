<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\News */

$this->title = $model->title;
?>
<div class="news-view">

    <h1><?= Html::a($this->title, ['view', 'id' => $model->id]) ?></h1>

    <small class="text-muted">
        By <I><?= Html::a($model->reporter->username, ['reporter', 'id' => $model->reporter]) ?></I>
        at <?= Yii::$app->formatter->asDatetime($model->created_at); ?>
    </small>
    <div class="body" style="overflow-wrap: break-word">
        <div class="media" style='width: 300px;'>
            <?= Html::img( '@web/uploads/images/' .$model->img, ['width'=>'100%']) ?>
        </div>
        <p></p>
        <p></p>
        <hr align="left" width="50%">
        <?= Yii::$app->formatter->asHtml($model->body) ?>
        <div class="clearfix"></div>
    </div>
</div>
