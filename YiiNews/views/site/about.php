<?php

/* @var $this yii\web\View */

use yii\helpers\Html;

$this->title = 'About';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-about">
    <h1><?= Html::encode($this->title) ?></h1>
    <div class="well well-sm" align="center">
    <p>
        A simple news platform that has a news stand that displays the recent news. Reporters are free to join
        and write articles, But first they need to register with correct email and verify their identity, before being able to
        publish any news. Reporters can delete their own articles only, no modifications allowed, so make sure you review your article well
        before publishing.
    </p>
    <p> Do you Enjoy an article? you can download it as PDF to take it to anywhere with you !</p>
    <p>  We also have an amazing RRS Feeds waiting for its subscribers. </p>
    <p>  Yii News is a Crossover task </p>
    <p>Developed with Love from Egypt. </p>
    <p>Magdy Medhat</p>
    </div>
</div>
