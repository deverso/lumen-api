<?php

namespace App\Strategy\Transactions;

class ChangeFundsStrategy
{

  public function changeFunds($wallet, $amount, $type)
  {
    if ($type == 'pendent') {
        $obj = new Pendent();
    }
    return $obj->changeFunds($wallet, $amount);
  }
  
}