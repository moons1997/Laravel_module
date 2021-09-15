<?php

namespace App\Modules\Todo\Providers;

use Illuminate\Support\ServiceProvider;
use Route;
class TodoServiceProvider extends ServiceProvider
{
    protected $namespace = 'App\Modules\Todo\Http\Controllers';
    protected $apiPrefix = '/home';

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerConfig();
        $this->routes();
        if ($this->app->runningInConsole()) {
            $this->registerMigrations();
        }
    }

     /**
     * Register config.
     *
     * @return void
     */
    protected function registerConfig()
    {
        $this->mergeConfigFrom(
            __DIR__ . '/../config/config.php', 'book'
        );
    }


    /**
     * Register Installment's migration files.
     *
     * @return void
     */
    protected function registerMigrations()
    {
        $this->loadMigrationsFrom(__DIR__ . '/../database/migrations');
    }


    public function routes()
    {
        Route::prefix($this->apiPrefix)
            ->namespace($this->namespace)
            ->middleware('jwt.verify')
            ->group(__DIR__ . '/../routes/route.php');
    }
}
