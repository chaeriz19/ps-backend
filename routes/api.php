<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\AuthController;

// authentication
Route::middleware(['auth:sanctum'])->get('/user', function (Request $request) {
    return $request->user();
});
Route::post('/login', [AuthController::class, 'login'])->name('user.login');


// movie data
Route::get('/movies/all', [MovieController::class, 'all'])->name('movies.all');
Route::get('/movies/latest', [MovieController::class, 'latest'])->name('movies.latest');
Route::post('/movies/page', [MovieController::class, 'page_control'])->name('movies.page_control');





