<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Users extends Model
{
    protected $table = 'users';

    protected $hidden = ['password'];

    protected $fillable = [
        'name',
        'email',
        'password',
        'cpf',
        'cnpj',
        'seller'
    ];

    public function payments()
    {
        return $this->hasMany('App\Models\Transactions', 'payer', 'id');
    }

    public function received()
    {
        return $this->hasMany('App\Models\Transactions', 'payee', 'id');
    }

    public function wallet()
    {
        return $this->hasOne('App\Models\Wallet', 'user_id', 'id');
    }
}
