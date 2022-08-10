<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
class AssetsController extends Controller
{
    public function index()
    {
         $assets = DB::table('kmac_asset')->get();
        return view('Admin.fixed-assets')->with([
            'assets'=>$assets,
            ]);
    }

    public function delete($id)
    {

        $id;

        $result = DB::table('kmac_asset')
        ->where('id','=',$id)
        ->delete();

        if($result){
          return back()->with('deleted','Asset Deleted');
        }
    }
    public function store(Request $request)
    {
        // print "<pre>";
        // print_r($request->all());

        $prefix = 'asset_';
            $path = $request->file('asset-image');
            $imagename = $prefix.time().'.'.$path->getClientOriginalExtension();  
            $path->move(public_path('asset_images'),$imagename);

            $unique = DB::table('kmac_asset')->orderBy('id','desc')->first();
            $number = str_replace('AST','',$unique ? $unique->id : 0);

            if($number == 0)
            {
                $number = 'AST-00001';
            } 
            else
            {
                $number = 'AST-'.sprintf("%5d", $number+1);
            }
            echo $number;

        $data = [
            'item_name'=> $request->input('asset-name'),
            'item_code'=> $number,
            'actual_qty'=> $request->input('asset-qty'),
            'image'=>$imagename,
            'uom'=>$request->input('asset-unit'),
            'status'=>$request->input('status'),
        ];

        $result = DB::table('kmac_asset')->insert($data);

        if($result){
            return back()->with('message','Asset Stored');
        }



    }
    public function edit(Request $request)
    {
        $id = $request->input('id');
        $data = DB::table('kmac_asset')->where('id',$id)->get();

        echo json_encode($data);
    }

    public function update_asset(Request $request)
    {   
        $id = $request->input('id');

        $prefix = 'asset_';
            $path = $request->file('asset-image');
            $imagename = $prefix.time().'.'.$path->getClientOriginalExtension();  
            $path->move(public_path('asset_images'),$imagename);

            $unique = DB::table('kmac_asset')->orderBy('id','desc')->first();
            $number = str_replace('AST','',$unique ? $unique->id : 0);

            if($number == 0)
            {
                $number = 'AST-00001';
            } 
            else
            {
                $number = 'AST-'.sprintf("%0000d", $number+1);
            }
            echo $number;

        $data = [
            'item_name'=> $request->input('asset-name'),
            'item_code'=> $number,
            'actual_qty'=> $request->input('asset-qty'),
            'image'=>$imagename,
            'uom'=>$request->input('asset-unit'),
            'status'=>$request->input('status'),
        ];

        $result = DB::table('kmac_asset')->where('id',$id)->update($data);

        if($result){
            return back()->with('message','Asset Updated');
        }

    }
}
