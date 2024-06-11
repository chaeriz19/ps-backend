<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\AuthController;

// authentication routes
Route::post('/user/login', [AuthController::class, 'login'])->name('user.login');
Route::post('/user/register', [AuthController::class, 'register'])->name('user.register');

// protected routes
Route::middleware(['auth:sanctum'])->group(function() {
    
    // protected movie data routes
    Route::get('/movies/all', [MovieController::class, 'all'])->name('movies.all');
    Route::get('/movies/latest', [MovieController::class, 'latest'])->name('movies.latest');
    Route::post('/movies/page', [MovieController::class, 'page_control'])->name('movies.page_control');
    Route::post('/movies/search', [MovieController::class, 'search'])->name('movies.search');
});



