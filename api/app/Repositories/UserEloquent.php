<?php

namespace App\Repositories;

use App\Models\Users;
use App\Repositories\UserInterface;

class UserEloquent implements UserInterface
{
    private $model;

    public function __construct(Users $user)
    {
        $this->model = $user;
    }

    public function get($id)
    {
        $user = $this->model->find($id);

        if ($user) {
            $user->wallet;
        }
        
        return $user;
    }     

}