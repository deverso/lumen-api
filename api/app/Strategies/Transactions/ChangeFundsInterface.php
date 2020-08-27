<?php

namespace App\Strategy\Transactions;

interface ChangeFundsInterface
{

  public function changeFunds($wallet, $amount);

}