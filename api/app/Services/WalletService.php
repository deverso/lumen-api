<?php

namespace App\Services;

use App\Repositories\WalletInterface;
use Symfony\Component\HttpFoundation\Response;
use Illuminate\Database\QueryException;
use App\Strategy\Transactions\ChangeFundsStrategy;

class WalletService
{
    private $walletRepository, $changeFunds;

    public function __construct(WalletInterface $walletRepository, ChangeFundsStrategy $changeFunds)
    {
        $this->walletRepository = $walletRepository;
        $this->changeFunds = $changeFunds;
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

            $data = $this->changeFunds($wallet, $amount, $type);

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
