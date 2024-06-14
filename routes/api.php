<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// import controllers
use App\Http\Controllers\MovieController;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\SerieController;

// unprotected routes
Route::post('/user/login', [AuthController::class, 'login'])->name('user.login');
Route::post('/user/register', [AuthController::class, 'register'])->name('user.register');
Route::get('/movies/all', [MovieController::class, 'all'])->name('movies.all');

// protected routes
Route::middleware('auth:sanctum')->group(function () {
    
    // User
    Route::post('/user/delete', [AuthController::class, 'delete'])->name('users.delete');

    // Movies
    Route::post('/movie/add-favorite', [MovieController::class, 'add_favorite'])->name('movies.add_favorite');
    Route::get('/movies/latest', [MovieController::class, 'latest'])->name('movies.latest'); // last 5 movies added in DB
    Route::post('/movies/page', [MovieController::class, 'page_control'])->name('movies.page_control');
    Route::post('/movies/search', [MovieController::class, 'search'])->name('movies.search');
    
    // Series
    Route::post('/series/add-favorite', [SerieController::class, 'add_favorite'])->name('series.add_favorite');
    Route::get('/series/latest', [SerieController::class, 'latest'])->name('series.latest'); // last 5 series added in DB
    Route::post('/series/search', [SerieController::class, 'search'])->name('series.search');

});

    









