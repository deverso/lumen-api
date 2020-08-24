<?php

namespace App\Models;

class ValidationTransaction
{
    const RULE_TRANSACTION = [
        "payer" => "required|numeric|exists:App\Models\Users,id,seller,0",
        "payee" => "required|numeric|exists:App\Models\Users,id|different:payer",
        "value" => "required|numeric",
    ];

    const MESSAGE_TRANSACTION = [
        "payer.exists" => "Payer doesn't exists or is a seller.",
        "payee.exists" => "Payee doesn't exists.",
        "value.numeric" => "",
    ];

    const RULE_TRANSACTION_STATUS = [
        "status" => "required|numeric|in:2,3"
    ];

    const MESSAGE_TRANSACTION_STATUS = [
        "status.in" => "Invalid Status."
    ];
}