<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class ChemicalController extends Controller
{
     
    public function index()
    {
       
        
        $list = DB::table('kmac_inventory')
        ->select('inventory.*','inventory.item_code as che_code','inventory.item_name as name') 
        ->join('stock_items','stock_items.item_code','inventory.item_code')
        ->get();
        

        return view('Admin.chemical-add')->with([
            'list'=>$list,
        ]);
    }
 
    
    public function add_chemical(Request $request)
    {
         

        $data = [
            'item_name'=>$request->input('chemical'), 
            'item_code'=>$request->input('code'),
            'uom'=>$request->input('uom'),
        ];

        $result = DB::table('stock_items')->insert($data);
        if($result){
            return response()->json([
                'msg'=>'stored',
            ]);
        }
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
