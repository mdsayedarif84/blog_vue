<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

    Route::get('/', function () {
        return view('welcome');
    });

    Auth::routes();

    Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('/{anypath}', [App\Http\Controllers\HomeController::class, 'index'])->where('path','.*');
    Route::get('/post', [App\Http\Controllers\Admin\PostController::class, 'index']);
    Route::post('/add-category', [App\Http\Controllers\Admin\CategoryController::class, 'store'])->name('add-category');
