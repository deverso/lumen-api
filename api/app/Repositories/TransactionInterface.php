<?php

namespace App\Repositories;

use Illuminate\Http\Request;

interface TransactionInterface
{
    public function add(Request $request);

    public function get($id);

    public function analysed($id, $data);

}