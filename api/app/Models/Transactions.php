<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Transactions extends Model
{
    protected $table = 'transactions';

    protected $fillable = [
        'payer',
        'payee',
        'value',
        'status',
    ];

    public function payerDetail()
    {
        return $this->belongsTo('App\Models\Users', 'payer', 'id');
    }
    
    public function payeeDetail()
    {
        return $this->belongsTo('App\Models\Users', 'payee', 'id');
    }
}
