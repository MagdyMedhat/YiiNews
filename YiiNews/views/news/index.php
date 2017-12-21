<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\ListView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\NewsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Welcome!';
unset($this->params['breadcrumbs']);
?>
<div class="news-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="row">

        <?= ListView::widget([
            'dataProvider' => $dataProvider,
            'itemView' => '_article',
            ]); ?>

    </div>
    <br/>
</div>
