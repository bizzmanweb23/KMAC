<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class SuppliesController extends Controller
{
   
    public function index()
    {
        $list = DB::table('kmac_inventory')
        ->select('stock_items.*','stock_items.item_code as che_code','stock_items.item_name as name')
        ->join('stock_items','stock_items.item_code','inventory.item_code')
        ->get();
        

        return view('Admin.supplies-add')->with([
            'list'=>$list,
        ]);
    }

   
    public function add_supplies(Request $request)
    {
         print "<pre>";
        print_r($request->input());
         
        exit();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
