<?php

namespace App\Repositories;

use Illuminate\Http\Request;
use App\Models\Transactions;
use App\Repositories\TransactionInterface;

class TransactionEloquent implements TransactionInterface
{
    private $model;

    public function __construct(Transactions $transaction)
    {
        $this->model = $transaction;
    }

    public function add(Request $request)
    {
        return $this->model->create(array_merge($request->all()));
    }  
     
    public function get($id)
    {      
        return $transaction = $this->model->with('payeeDetail', 'payerDetail')->find($id);
    }

    public function analysed($id, $data)
    {
        return $this->model->find($id)->update($data);
    }

}