<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind('App\Repositories\TransactionInterface', 'App\Repositories\TransactionEloquent');
        $this->app->bind('App\Repositories\UserInterface', 'App\Repositories\UserEloquent');
        $this->app->bind('App\Repositories\WalletInterface', 'App\Repositories\WalletEloquent');

    }
}
