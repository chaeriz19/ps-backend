<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\AuthController;

// authentication

Route::post('/login', [AuthController::class, 'login'])->name('user.login');

Route::middleware(['auth:sanctum'])->group(function() {
    
    // protected data
    Route::get('/movies/all', [MovieController::class, 'all'])->name('movies.all');
    Route::get('/movies/latest', [MovieController::class, 'latest'])->name('movies.latest');
    Route::post('/movies/page', [MovieController::class, 'page_control'])->name('movies.page_control');
    Route::post('/movies/search', [MovieController::class, 'search'])->name('movies.search');
    
});



