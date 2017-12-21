<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\filters;

class ReporterAccessRule extends \yii\filters\AccessRule
{
    public $allow = true;  // Allow access if this rule matches
    public $roles = ['@']; // Ensure user is logged in.

    public function allows($action, $user, $request)
    {
        $parentRes = parent::allows($action, $user, $request);
        // $parentRes can be `null`, `false` or `true`.
        // True means the parent rule matched and allows access.
        if ($parentRes !== true) {
            return $parentRes;
        }
        return ($this->getArticleReporterId($request) == $user->id);
    }

    private function getArticleReporterId($request)
    {
        // Fill in code to receive the right project.
        // assuming the project id is given à la `project/update?id=1`
        $articleId = $request->get('id');
        $article = \app\models\News::findOne($articleId);
        return isset($article) ? $article->reporter_id : null;
    }
}
