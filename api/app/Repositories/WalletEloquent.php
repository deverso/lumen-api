<?php

namespace App\Repositories;

use App\Models\Wallet;
use App\Repositories\WalletInterface;

class WalletEloquent implements WalletInterface
{
    private $model;

    public function __construct(Wallet $wallet)
    {
        $this->model = $wallet;
    }

    public function changeFunds($id, $data)
    {
        return $this->model->find($id)->update($data);
    }

    public function get($id)
    {
        return $wallet = $this->model->find($id);
    }

}