<?php 
 
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\API\RegisterController;
use App\Http\Controllers\API\EmpController;

use Illuminate\Support\Facades\DB;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
 
Route::post('register',[RegisterController::class, 'register'])->name('register');
Route::post('login',[RegisterController::class, 'login'])->name('login');
 
Route::post('attendance/clockin', [EmpController::class, 'clockin']);
Route::post('attendance/clockout', [EmpController::class, 'clockout']);

Route::post('user/logout', [RegisterController::class, 'user_logout']); 
Route::post('forgot/password/link', [RegisterController::class, 'ForgotPasswordlink']); 
Route::post('reset/password',[RegisterController::class, 'ResetPasswordStore']); 

Route::get('assets', [EmpController::class, 'assets']);  
Route::get('inventory', [EmpController::class, 'inventory']); 
Route::get('tasks', [EmpController::class, 'tasks']); 
Route::get('history/tasks', [EmpController::class, 'history_task']);
Route::get('history/assets', [EmpController::class, 'history_assets']);


Route::get('completed/jobs',[EmpController::class, 'completed_jobs']); 
Route::post('mc/submittion', [EmpController::class, 'mc_submittion']); 
Route::post('profile/edit', [RegisterController::class , 'profile_edit']); 
Route::get('get/profile',[EmpController::class, 'get_profile']);

Route::get('get/job/category',[EmpController::class, 'job_category']);
Route::get('get/job/description',[EmpController::class, 'job_description']);