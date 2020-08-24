<?php

namespace App\Repositories;


interface WalletInterface
{
    public function get($id);
    public function changeFunds($id, $data);

}
