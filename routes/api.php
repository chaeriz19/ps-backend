<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// Controllers
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ContentController;
use App\Http\Controllers\FavoriteController;

// Unprotected routes
Route::post('/user/login', [AuthController::class, 'login'])->name('user.login');
Route::post('/user/register', [AuthController::class, 'register'])->name('user.register');
Route::get('/content/{id}', [ContentController::class, 'getContentById']);

// Get all series or movies
Route::get('/all/{type}', [ContentController::class, 'get_all'])->name('get.all');
Route::get('/latest', [ContentController::class, 'latest'])->name('get.latest');
Route::get('/genre/{genre}', [ContentController::class, 'sort_genre'])->name('get.latest');



// Protected routes
Route::middleware('auth:sanctum')->group(function () {
    


    // protected content routes
    Route::post('/content/create', [ContentController::class, 'create_content'])->name('content.create');
    Route::post('/content/delete', [ContentController::class, 'delete_content'])->name('content.delete');
    Route::post('/content/all', [ContentController::class, 'all'])->name('content.all');

    // protected user routes
    Route::post('/user/delete', [AuthController::class, 'delete'])->name('user.delete');
    Route::post('/user/logout', [AuthController::class, 'logout'])->name('user.logout');
    Route::post('/user/toggle', [FavoriteController::class, 'togglefavorite'])->name('favorite.togglefavorite');
    Route::post('/user/favorites', [FavoriteController::class, 'showfavorites'])->name('favorite.showfavorites');
    Route::post('/user/check', [FavoriteController::class, 'checkfavorite'])->name('user.checkfavorite');
    Route::get('/user/get', [AuthController::class, 'getUser'])->name('user.get');
    Route::post('/user/delete', [AuthController::class, 'deleteUser'])->name('user.delete');
    Route::post('/user/edit', [AuthController::class, 'editUser'])->name('user.edit');

    Route::post('/search', [ContentController::class, 'search'])->name('search');
});

// Niet protected
Route::post('/user/create', [AuthController::class, 'createUser'])->name('user.create');
