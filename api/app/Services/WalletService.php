<?php

namespace App\Services;

use App\Repositories\WalletInterface;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Database\QueryException;

class WalletService
{
    private $walletRepository;

    public function __construct(WalletInterface $walletRepository)
    {
        $this->walletRepository = $walletRepository;
    }

    public function changeFunds($id, $type, $amount)
    {  
       try {
            $wallet = $this->walletRepository->get($id);

            switch ($type) {
                case 'pendent':
                    $data = ["pendent_amount" => $wallet->pendent_amount + $amount];
                    break;
                case 'add':
                    $data = [
                        "pendent_amount" => $wallet->pendent_amount - $amount,
                        "amount" => $wallet->amount + $amount
                    ];
                    break;
                case 'remove':
                    $data = ["amount" => $wallet->amount - $amount];
                    break;
                case 'revert':
                    $data = ["pendent_amount" => $wallet->pendent_amount - $amount];
                    break;
                case 'add_revert':
                    $data = ["amount" => $wallet->amount + $amount];
                    break;
                default:
                    return false;
                    break;
            }

            if ($this->walletRepository->changeFunds($wallet->id, $data)) {
                return response()->json($wallet, Response::HTTP_CREATED);
            } else {
                return response()->json([], Response::HTTP_OK);
            }
        } catch (QueryException $exception) {
            return response()->json(['error' => 'Something went wrong.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

}
