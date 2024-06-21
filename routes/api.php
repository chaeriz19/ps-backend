<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// import controllers

use App\Http\Controllers\AuthController;
use App\Http\Controllers\ContentController;
use App\Http\Controllers\FavoriteController;

// unprotected routes
Route::post('/user/login', [AuthController::class, 'login'])->name('user.login');
Route::post('/user/register', [AuthController::class, 'register'])->name('user.register');

// get all series or movies
Route::get('/all/{type}', [ContentController::class, 'get_all'])->name('get.all');

// protected routes
Route::middleware('auth:sanctum')->group(function () {
    
    // User
    Route::post('/user/favorite', [FavoriteController::class, 'favorite'])->name('user.favorite');
    Route::get('/user/favorites', [ContentController::class, 'favorites'])->name('user.favorites');
    Route::post('/user/delete', [AuthController::class, 'delete'])->name('users.delete');

    Route::post('/search', [ContentController::class, 'search'])->name('search');
});

    









