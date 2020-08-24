<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Services\TransactionService;

class TransactionController extends Controller
{
    private $transactionService;
    private $guzzle;

    public function __construct(TransactionService $transactionService)
    {
        $this->transactionService = $transactionService;
    }

    public function add(Request $request)
    {       
        return $this->transactionService->add($request);
    }

    public function get($id)
    {       
        return $this->transactionService->get($id);
    }

    public function analysed($id, Request $request)
    {
        return $this->transactionService->analysed($id, $request->all());
    }
}
