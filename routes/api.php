<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SerieController;

// authentication routes
Route::post('/user/login', [AuthController::class, 'login'])->name('user.login');
Route::post('/user/register', [AuthController::class, 'register'])->name('user.register');
Route::get('/movies/all', [MovieController::class, 'all'])->name('movies.all');


// test

Route::post('/movie/add-favorite', [MovieController::class, 'add_favorite'])->name('movies.add_favorite');
Route::post('/serie/add-favorite', [SerieController::class, 'add_favorite'])->name('series.add_favorite');




Route::middleware('auth:sanctum')->group(function () {
    Route::post('/user/remove-favorite', [MovieController::class, 'remove_favorite'])->name('users.remove_favorite');
    Route::post('/user/get-favorite', [MovieController::class, 'get_favorites'])->name('users.get_favorites');

    Route::get('/movies/latest', [MovieController::class, 'latest'])->name('movies.latest');
    Route::post('/movies/page', [MovieController::class, 'page_control'])->name('movies.page_control');
    Route::post('/movies/search', [MovieController::class, 'search'])->name('movies.search');
    
    Route::post('/user/delete', [AuthController::class, 'delete'])->name('users.delete');
});

    









