<?php

namespace app\controllers;

use Yii;
use app\models\News;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\helpers\Url;
use vova07\imperavi\actions\GetAction;
use yii\data\ActiveDataProvider;
use yii\filters\AccessControl;
use yii\web\UploadedFile;
/**
 * NewsController implements the CRUD actions for News model.
 */

class NewsController extends Controller
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'dashboard', 'create', 'delete'],
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
        ];
    }

    public function actions()
    {
        return [
            'image-upload' => [
                'class' => 'vova07\imperavi\actions\UploadAction',
                'url' => Yii::$app->homeUrl .'uploads/images/', // Directory URL address, where files are stored.
                'path' => '@webroot/uploads/images' // Or absolute path to directory where files are stored.
            ],
            'images-get' => [
                'class' => 'vova07\imperavi\actions\GetAction',
                'url' => Yii::$app->homeUrl .'uploads/images/', // Directory URL address, where files are stored.
                'path' => '@webroot/uploads/images', // Or absolute path to directory where files are stored.
                'type' => GetAction::TYPE_IMAGES,
            ]
        ];
    }

    /**
     * Lists all News models.
     * @return mixed
     */
    public function actionIndex()
    {
        $query = News::find()->orderBy('created_at DESC');
        $dataProvider = new ActiveDataProvider(['query' => $query, 'pagination' => ['pagesize' => 9]]);
        return $this->render('index', ['dataProvider'=>$dataProvider]);
    }

    /**
     * Lists all News models.
     * @return mixed
     */
    public function actionDashboard()
    {
        $query = News::find()->orderBy('created_at DESC')->andFilterWhere(['reporter_id' => Yii::$app->user->id]);
        $dataProvider = new ActiveDataProvider(['query' => $query, 'pagination' => ['pagesize' => 5]]);
        return $this->render('dashboard', ['dataProvider' => $dataProvider]);
    }

    /**
     * Displays a single News model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new News model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new News();
        if ($model->load(Yii::$app->request->post()))
        {
            $model->reporter_id = Yii::$app->user->id;
            $model->created_at = date('Y-m-d H:i:s');

            $img = UploadedFile::getInstance($model, 'img');
            $generated_name = time() . '.' . $img->extension;

            if (strpos($img->type,'image') === false && $img->size > 5120000)
                $model->addError('image', "File too big or incorrect image.!" );

            else if ($img->saveAs('uploads/images/' . $generated_name))
            {
                $model->img = $generated_name;

                if($model->save())
                    return $this->redirect(['view', 'id' => $model->id]);
            }
            else
                $model->addError('image', "problems saving file" );
        }
        return $this->render('create', ['model' => $model]);
    }

    /**
     * Deletes an existing News model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        if($this->findModel($id)->reporter_id != Yii::$app->user->id)
            return $this->goHome();

        $this->findModel($id)->delete();

        return $this->redirect(['dashboard']);
    }

    /**
     * Finds the News model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return News the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = News::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
