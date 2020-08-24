<?php

namespace App\Services;

use App\Repositories\TransactionInterface;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Database\QueryException;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\ValidationTransaction;
use App\Services\UserService;
use App\Services\WalletService;
use App\Jobs\NotifyPaymentJob;
use Queue;

class TransactionService
{
    private $transactionRepository;
    private $userService;
    private $walletService;

    public function __construct(TransactionInterface $transactionRepository, UserService $userService, WalletService $walletService)
    {
        $this->transactionRepository = $transactionRepository;
        $this->userService = $userService;
        $this->walletService = $walletService;
    }

    public function add(Request $request)
    {       
        $validator = Validator::make(
            $request->all(),
            ValidationTransaction::RULE_TRANSACTION,
            ValidationTransaction::MESSAGE_TRANSACTION
        );
        
        if ($validator->fails()) {
            return response()->json($validator->errors(), Response::HTTP_BAD_REQUEST);
        } else {
            try {
                $payer = $this->userService->get($request->payer);
                $payer_wallet = $payer->original->wallet;

                if ($payer_wallet->amount < $request->value) {
                    return response()->json(["error" => "Not enough funds."], Response::HTTP_FORBIDDEN);
                }

                $request->request->add(['status' => 1]);
                $transaction = $this->transactionRepository->add($request);

                if ($transaction) {
                    $this->walletService->changeFunds($payer_wallet->id, 'remove', $transaction->value);
                    $this->walletService->changeFunds($transaction->payee, 'pendent', $transaction->value); //refazer
                    Queue::push(new NotifyPaymentJob);
                    return response()->json($transaction, Response::HTTP_CREATED);
                } else {
                    return response()->json([], Response::HTTP_OK);
                }
            } catch (QueryException $exception) {
                return response()->json(['error' => 'Something went wrong.'], Response::HTTP_INTERNAL_SERVER_ERROR);
            }
        }
    }

    public function get($id)
    {       
        try {
            $transaction = $this->transactionRepository->get($id);

            if ($transaction) {
                return response()->json($transaction, Response::HTTP_CREATED);
            } else {
                return response()->json([], Response::HTTP_OK);
            }
        } catch (QueryException $exception) {
            return response()->json(['error' => 'Something went wrong.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    // REFACTOR
    public function analysed($id, array $data)
    {
        $validator = Validator::make(
            $data,
            ValidationTransaction::RULE_TRANSACTION_STATUS,
            ValidationTransaction::MESSAGE_TRANSACTION_STATUS
        );
        
        if ($validator->fails()) {
            return response()->json($validator->errors(), Response::HTTP_BAD_REQUEST);
        } else {
            try {
                $transaction = $this->transactionRepository->get($id);

                if ($transaction->status !== 1) {
                    return response()->json("Transaction already finished.", Response::HTTP_FORBIDDEN );
                }

                $analyse = $this->transactionRepository->analysed($id, $data);
                
                if ($analyse) {

                    switch ($data["status"]) {
                        case 2:
                            $this->walletService->changeFunds($transaction->payeeDetail->wallet->id, 'add', $transaction->value);
                            break;
                        case 3:
                            $this->walletService->changeFunds($transaction->payeeDetail->wallet->id, 'revert', $transaction->value);
                            $this->walletService->changeFunds($transaction->payerDetail->wallet->id, 'add_revert', $transaction->value);
                            break;
                        default:
                            throw new Exception("Something went wrong.", 1);
                            break;
                    }
                    $this->transactionRepository->analysed($id, ["status" => 4]);
                    return response()->json(null, Response::HTTP_NO_CONTENT );
                } else {
                    return response()->json([], Response::HTTP_OK);
                }
            } catch (QueryException $exception) {
                return response()->json(['error' => 'Something went wrong.'], Response::HTTP_INTERNAL_SERVER_ERROR);
            }
        }
    }

}