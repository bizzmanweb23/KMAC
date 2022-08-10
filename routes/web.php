<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\InventoryController;
use App\Http\Controllers\ChemicalController;
use App\Http\Controllers\EquipmentController;
use App\Http\Controllers\SuppliesController;
use App\Http\Controllers\AssetsController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\Admin\AdminAuthController;
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

Route::get('login',[AdminAuthController::class, 'index'])->name('admin.login');
Route::post('login',[AdminAuthController::class, 'login_check']);

Route::get('register',[AdminAuthController::class, 'register'])->name('admin.register');
Route::post('register',[AdminAuthController::class, 'register_new']);
Route::get('logout',[AdminAuthController::class, 'logout']);

Route::group(['middleware'=>'authcheck'], function() {  

	Route::any('/',[DashboardController::class, 'index']);
	Route::any('/dashboard',[DashboardController::class, 'index']);
	Route::get('profile',[UserController::class, 'profile']);
	Route::get('edit/profile',[UserController::class, 'edit_profile']);
	Route::post('dependent/menu', [InventoryController::class, 'dep_menu']);
	Route::post('stocks/delete',[AssetsController::class, 'delete']);

	Route::get('employee/list',[EmployeeController::class, 'index'])->name('emp.list');
	Route::any('employee/add',[EmployeeController::class, 'add_employee'])->name('emp.add');
	Route::any('employee/edit/{id}',[EmployeeController::class, 'edit'])->name('emp.edit');
	Route::post('employee/update',[EmployeeController::class, 'update'])->name('emp.update');
	Route::post('employee/store',[EmployeeController::class, 'store_employee']);
	Route::any('employee/delete/{id}',[EmployeeController::class, 'delete'])->name('emp.delete'); 
	Route::get('employee/details/{id}',[EmployeeController::class, 'get_emp_details'])->name('emp.details');
	Route::get('inventory',[InventoryController::class, 'index'])->name('stock.inv');
	Route::get('add/inv/form',[InventoryController::class, 'add_inv_form'])->name('add.inv.form');
	Route::post('add/inventory',[InventoryController::class, 'add_inventory']);
	Route::any('delete/inv/{id}',[InventoryController::class, 'delete'])->name('delete.inv'); 

	Route::post('edit/inv',[InventoryController::class, 'edit']);
	Route::post('update/inventory',[InventoryController::class, 'update']); 
	
	Route::get('add/chemical/form',[ChemicalController::class, 'index'])->name('add.chemical.form');
	Route::post('add/chemical',[ChemicalController::class, 'add_chemical']);
	 
	Route::get('add/equipment/form',[EquipmentController::class, 'index'])->name('add.equipment.form');
	Route::post('add/equipment',[EquipmentController::class, 'add_equipment']);

	Route::get('add/supplies/form',[SuppliesController::class, 'index'])->name('add.supply.form');
	Route::post('add/supplies',[SuppliesController::class, 'add_supplies']);

	Route::get('assets',[AssetsController::class, 'index']);
	Route::post('add/asset', [AssetsController::class, 'store']);
	Route::any('delete/asset/{id}',[AssetsController::class, 'delete'])->name('delete.asset');
	Route::post('edit/asset',[AssetsController::class, 'edit']);
	Route::post('update/asset',[AssetsController::class, 'update_asset']);

});