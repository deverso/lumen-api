<?php

namespace App\Http\Middleware;

use Closure;
use App\Utils\CheckoutApi;
use App\Jobs\NotifyPaymentJob;

class TransactionMiddleware
{
    public function handle($request, Closure $next)
    {
        $checkoutApi = new CheckoutApi;
        $response = $checkoutApi->authorizeTransaction();

        if ($response->getStatusCode() != 200) {
            return $response;
        }

        return $next($request);
        
    }
    
}
