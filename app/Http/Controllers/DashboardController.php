<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class DashboardController extends Controller
{
    public function index()
    {
        $employee = DB::table('kmac_employees')->get();
        $inventory = DB::table('kmac_inventory')->get();
        $chemicals = DB::table('kmac_inventory')->where('inv_category_id',1)->get();
         $equipments = DB::table('kmac_inventory')->where('inv_category_id',2)->get();
        $supplies = DB::table('kmac_inventory')->where('inv_category_id',3)->get();
        

        return view('dashboard')->with([
            'employee'=>count($employee),
            'inventory'=>count($inventory),
            'chemicals'=>count($chemicals),
             'equipments'=>count($equipments),
            'supplies'=>count($supplies),
           
        ]);
    }
}
