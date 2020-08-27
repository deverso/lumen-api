<?php

namespace App\Strategy\Transactions;

class Pendent implements ChangeFundsInterface
{

  public function changeFunds($wallet, $amount)
  {
    return ["pendent_amount" => $wallet->pendent_amount + $amount];
  }

}