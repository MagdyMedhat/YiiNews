<?php
use yii\helpers\Html;
use yii\helpers\StringHelper;
use yii\helpers\HtmlPurifier;
?>

<div class="col-sm-6 col-md-4" style="overflow-wrap: break-word" >
    <div class="thumbnail">
        <div class="media" style='width: 300px;height: 220px'>
            <?= Html::img( '@web/uploads/images/' .$model->img, ['width'=>'100%']) ?>
        </div>
        <div class="caption">
            <h3><?= $model->title ?></h3>
            published by <I><?= Html::a($model->reporter->username) ?></I>
            <p></p><p></p>

            <?= Html::a('Read <span class="glyphicon glyphicon-menu-right"></span><span class="glyphicon glyphicon-menu-right"></span>', ['news/view', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        </div>
    </div>
</div>
