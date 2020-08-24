<?php

namespace App\Utils;

use GuzzleHttp\Client;
use Symfony\Component\HttpFoundation\Response;

class CheckoutApi
{
    public function authorizeTransaction(){
        $client = new Client();
        $authorize = $client->request('GET', 'https://run.mocky.io/v3/8fafdd68-a090-496f-8c9a-3442cf30dae6');
        $response = json_decode($authorize->getBody()->getContents());

        if ($response->message && strtolower($response->message) != 'autorizado'){
            return response()->json(["error" => "Transaction not authorized."], Response::HTTP_FORBIDDEN);
        }
        
        return response()->json(null, Response::HTTP_OK);
    }
}