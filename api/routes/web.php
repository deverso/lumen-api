<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->group(['prefix' => "/transaction"], function() use ($router) {
    $router->post("/", [
        "middleware" => "transaction",
        "uses" => "TransactionController@add"
        ]);
    $router->get('/{id}', "TransactionController@get");
    $router->put('/{id}/analysed', "TransactionController@analysed");
});

$router->group(['prefix' => "/users"], function() use ($router) {
    $router->get("/{id}", "UserController@get");
    $router->get("/{id}/transactions", "UserController@getTransactions");
});

$router->get('/', function () use ($router) {
    return $router->app->version();
});
