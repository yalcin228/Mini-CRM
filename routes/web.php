<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\backend\AdminLoginController;
use App\Http\Controllers\backend\AdminController;
use App\Http\Controllers\backend\AdminCompaniesController;
use App\Http\Controllers\backend\AdminEmployeeController;
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

// Admin Login Route
Route::prefix('admin')->middleware('isLogin')->group(function () {
    Route::get('login',[AdminLoginController::class,'login'])->name('admin.login');
    Route::post('login',[AdminLoginController::class,'post_login']);
});


// Admin Pages Route
Route::prefix('admin')->middleware('isAdmin')->group(function () {
    Route::get('/',[AdminController::class,'index'])->name('admin.index');
    Route::get('logout',[AdminLoginController::class,'logout'])->name('admin.logout');
    Route::resource('company',AdminCompaniesController::class);
    Route::post('company-delete',[AdminCompaniesController::class,'deleted'])->name('company.deleted');
    Route::resource('employee',AdminEmployeeController::class);
    Route::post('employee-delete',[AdminEmployeeController::class,'deleted'])->name('employee.deleted');

});
