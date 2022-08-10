<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class EquipmentController extends Controller
{
     
    public function index()
    {
        $list = DB::table('kmac_inventory')
        ->select('stock_items.*','stock_items.item_code as che_code','stock_items.item_name as name')
        ->join('stock_items','stock_items.item_code','inventory.item_code')
        ->get();
        

        return view('Admin.equipment-add')->with([
            'list'=>$list,
        ]);
    }

   
    public function add_equipment(Request $request)
    {
         print "<pre>";
        print_r($request->input());
         
        exit();
    }
 
    public function show($id)
    {
        //
    }

   
    public function edit($id)
    {
        //
    }

   
    public function update(Request $request, $id)
    {
        //
    }

    
    public function destroy($id)
    {
        //
    }
}
