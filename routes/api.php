<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\AuthController;


// Protected routes

Route::middleware(['auth:sanctum'])->get('/user', function (Request $request) {
    return $request->user();
});

// Unprotected routes

Route::get('/movies', [MovieController::class, 'index']);
Route::get('/login', [AuthController::class, 'login'])->name('user.login');


