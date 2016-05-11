<?php

namespace frontend\models;

use Yii;

/**
 * This is the model class for table "repository".
 *
 * @property integer $id
 * @property string $nama_barang
 * @property string $jenis_barang
 */
class Repository extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'repository';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['nama_barang', 'jenis_barang'], 'required'],
            [['nama_barang', 'jenis_barang'], 'string', 'max' => 50]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nama_barang' => 'Nama Barang',
            'jenis_barang' => 'Jenis Barang',
        ];
    }
}
