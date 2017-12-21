<?php

namespace app\models;

use Yii;
use dektrium\user\models\User;
/**
 * This is the model class for table "news".
 *
 * @property integer $id
 * @property string $title
 * @property string $body
 * @property string $created_at
 * @property integer $reporter_id
 *
 * @property User $reporter
 */
class News extends \yii\db\ActiveRecord
{
    public $verifyCode;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'news';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['title', 'body', 'img', 'created_at', 'reporter_id'], 'required'],
            [['body'], 'string'],
            [['title', 'img'], 'string', 'max' => 255],
            [['created_at'], 'date', 'format'=>'php:Y-m-d H:i:s'],
            [['reporter_id'], 'integer'],
            ['verifyCode', 'captcha'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'body' => 'Body',
            'img' => 'Image',
            'created_at' => 'Created At',
            'reporter_id' => 'Reporter ID',
            'verifyCode' => 'Verification Code'
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getReporter()
    {
        return $this->hasOne(User::className(), ['id' => 'reporter_id']);
    }
}
