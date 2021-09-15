<?php

use App\Modules\Todo\Http\Controllers\TodoController;
use Illuminate\Support\Facades\Route;

Route::get('/home', [TodoController::class, 'index']);
