<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;

AppAsset::register($this);
$this->title = Yii::$app->name;
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => [

            //home
            ['label' => 'Home', 'url' => Yii::$app->homeUrl],

            //login or logout
            Yii::$app->user->isGuest ?
                ['label' => 'Login', 'url' => Yii::$app->homeUrl.'user/security/login']
                :[
                    'label' => 'Logout (' . Yii::$app->user->identity->username . ')',
                    'url' => Yii::$app->homeUrl.'user/security/logout',
                    'linkOptions' => ['data-method' => 'post']
                ],

            //dashboard
            ['label' => 'Dashboard', 'url' => Yii::$app->homeUrl.'news/dashboard', 'visible' => !Yii::$app->user->isGuest],

            //about
            ['label' => 'About', 'url' => Yii::$app->homeUrl.'site/about'],
        ],
    ]);
    ?>

    <?= Html::a('<span class="glyphicon glyphicon-bell"></span> RSS', ['site/rss'], ['class' => 'btn btn-warning navbar-right navbar-btn']) ?>

    <?php
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; Magdy Medhat <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>
