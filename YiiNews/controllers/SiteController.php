<?php

namespace app\controllers;

use app\models\News;
use Yii;
use yii\web\Controller;
use yii\helpers\Url;
use yii\data\ActiveDataProvider;
use yii\helpers\StringHelper;
use kartik\mpdf\Pdf;

class SiteController extends Controller
{
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    public function actionIndex()
    {
        return $this->redirect(Url::to('news'));
    }

    public function actionAbout()
    {
        return $this->render('about');
    }

    public function actionPdf($id) {

        $model = News::findOne($id);
        // get your HTML raw content without any layouts or scripts
        $content = $this->renderPartial('_pdf', ['model'=>$model]);

        // setup kartik\mpdf\Pdf component
        $pdf = new Pdf([
            // set to use core fonts only
            'mode' => Pdf::MODE_CORE,
            // A4 paper format
            'format' => Pdf::FORMAT_A4,
            // portrait orientation
            'orientation' => Pdf::ORIENT_PORTRAIT,
            // stream to browser inline
            'destination' => Pdf::DEST_DOWNLOAD,
            // your html content input
            'content' => $content,
            // format content from your own css file if needed or use the
            'filename' => preg_replace('/[^A-Za-z0-9\. -]/', '', $model->title) . '.pdf',
            // enhanced bootstrap css built by Krajee for mPDF formatting
            'cssFile' => '@vendor/kartik-v/yii2-mpdf/assets/kv-mpdf-bootstrap.min.css',
            // any css to be embedded if required
            'cssInline' => '.kv-heading-1{font-size:18px}',
            // set mPDF properties on the fly
            'options' => ['title' =>  Yii::$app->name ],
            // call mPDF methods on the fly
            'methods' => [
                'SetHeader'=>[ Yii::$app->name ],
                'SetFooter'=>['{PAGENO}'],
            ]
        ]);

        // return the pdf output as per the destination setting
        return $pdf->render();
    }

    public function actionRss()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => News::find(),
            'pagination' => [
                'pageSize' => 10
            ],
        ]);

        $response = Yii::$app->getResponse();
        $headers = $response->getHeaders();
        $response->format = \yii\web\Response::FORMAT_RAW;
        $headers->set('Content-Type', 'application/rss+xml; charset=utf-8');

        echo \Zelenin\yii\extensions\Rss\RssView::widget([
            'dataProvider' => $dataProvider,
            'channel' => [
                'title' => Yii::$app->name,
                'link' => Url::toRoute('/', true),
                'description' => 'news',
                'language' => function ($widget, \Zelenin\Feed $feed) {
                    return Yii::$app->language;
                }
            ],
            'items' => [
                'title' => function ($model, $widget) {
                    return $model->title;
                },
                'description' => function ($model, $widget) {
                    return StringHelper::truncateWords($model->body, 50);
                },
                'link' => function ($model, $widget) {
                    return Url::toRoute(['post/view', 'id' => $model->id], true);
                },
                'author' => function ($model, $widget) {
                    return $model->reporter->username;
                },
                'pubDate' => function ($model, $widget) {
                    $date = \DateTime::createFromFormat('Y-m-d H:i:s', $model->created_at);
                    return $date->format(DATE_RSS);
                }
            ]
        ]);
    }
}
