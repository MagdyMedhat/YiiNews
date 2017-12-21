<?php

use yii\db\Schema;
use yii\db\Migration;

class m151104_182404_create_table_news extends Migration
{
    public function up()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%news}}', [
            'id' => Schema::TYPE_PK,
            'title' => Schema::TYPE_STRING.' NOT NULL DEFAULT ""',
            'body' => Schema::TYPE_TEXT.' NOT NULL DEFAULT ""',
            'img' => Schema::TYPE_STRING.' NOT NULL DEFAULT ""',
            'created_at' => Schema::TYPE_DATETIME . ' NOT NULL',
            'reporter_id' => Schema::TYPE_INTEGER . ' NOT NULL',
        ], $tableOptions);
        $this->addForeignKey('fk_news_created_by', '{{%news}}', 'reporter_id', '{{%user}}', 'id', 'CASCADE', 'CASCADE');
    }

    public function down()
    {
        $this->dropForeignKey('fk_news_created_by','{{%news}}');
        $this->dropTable('{{%news}}');
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
