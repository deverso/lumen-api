<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Wallet extends Model
{
    protected $table = 'wallet';

    protected $fillable = [
        'amount',
        'pendent_amount'
    ];

    public function user()
    {
        return $this->belongsTo('App\Models\Users', 'user_id', 'id');

    }
}
