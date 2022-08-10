<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class InventoryController extends Controller
{
    public function index()
    {
        
        $result = DB::table('kmac_inventory')->orderBy('id','desc')->get();
        
        $chemicals = DB::table('kmac_inventory') 
        ->where('inv_category_id',1)
        ->get();

        $equipments= DB::table('kmac_inventory')
        ->where('inv_category_id',2)
        ->get();

        $supplies = DB::table('kmac_inventory')
       ->where('inv_category_id',3)
        ->get();
        
       

        return view('Admin.inventory')->with([
            'inventory'=>$result, 
            'chemicals'=>$chemicals,
            'equipments'=>$equipments,
            'supplies'=>$supplies,
             
        ]);
        
    }

    public function add_inv_form()
    {
        return view('Admin.inventory-add');
    } 
 
    public function add_inventory(Request $request)
    {   
       
        $prefix = 'inventory_'; 
        $invtype = $request->input('inv_type'); 
 
        if($invtype == 1)
        {
            $invname = $request->input('inv-name');
            $actualqty = $request->input('actual-qty');
            $costperpcs = $request->input('cost-per-pcs');
            $status = $request->input('status');

            $path = $request->file('inv-image');
            $imagename = $prefix.time().'.'.$path->getClientOriginalExtension();  
            $path->move(public_path('chemicals'),$imagename);
            
            $unique = DB::table('kmac_inventory')->orderBy('id','desc')->first();
            $number = str_replace('CHE','',$unique ? $unique->id : 0);

            if($number == 0)
            {
                $number = 'CHE-00001';
            } 
            else
            {
                $number = 'CHE-'.sprintf("%5d", $number+1);
            }
            echo $number;

            $data = [
                'inv_image'=>$imagename,
                'item_name'=>$invname,
                'item_code'=>$number,
                'actual_qty'=>$actualqty,
                'qty_in'=>$actualqty,
                'cost_per_pcs'=>$costperpcs,
                'total_cost'=>$actualqty*$costperpcs,
                'uom'=>$request->input('uom'),
                'inv_category_id'=>$invtype,
                'status'=>$status,
            ];

            $result = DB::table('kmac_inventory')->insert($data);
                 
            if($result){
                return back()->with(
                'message','Chemical Added'
                );
            }
            
           
        }

        if($invtype == 2)
        {
            $invname = $request->input('inv-name');
            $actualqty = $request->input('actual-qty');
            $costperpcs = $request->input('cost-per-pcs');
            $status = $request->input('status');

            $path = $request->file('inv-image');
            $imagename = $prefix.time().'.'.$path->getClientOriginalExtension(); 
          
             $path->move(public_path('equipment'),$imagename);

            $unique = DB::table('kmac_inventory')->orderBy('id','desc')->first();
            $number = str_replace('EQP','',$unique ? $unique->id : 0);

            if($number == 0)
            {
                $number = 'EQP-00001';
            } 
            else
            {
                $number = 'EQP-'.sprintf("%5d", $number+1);
            }
            echo $number;

              $data = [
                'inv_image'=>$imagename,
                'item_name'=>$invname,
                'item_code'=>$number,
                'actual_qty'=>$actualqty,
                'qty_in'=>$actualqty,
                'cost_per_pcs'=>$costperpcs,
                'total_cost'=>$actualqty*$costperpcs,
                'uom'=>$request->input('uom'),
                'inv_category_id'=>$invtype,
                'status'=>$status,
            ];

            $result = DB::table('kmac_inventory')->insert($data);
            return back()->with(
                'message','Equipment Added'
            );
        }
        if($invtype == 3)
        {
           $invname = $request->input('inv-name');
            $actualqty = $request->input('actual-qty');
            $costperpcs = $request->input('cost-per-pcs');
            $status = $request->input('status');

            $path = $request->file('inv-image');
            $imagename = $prefix.time().'.'.$path->getClientOriginalExtension(); 
          
            $path->storeAs('Supplies',$imagename, 'public');
            $path->move(public_path('supplies'),$imagename);
              
            $unique = DB::table('kmac_inventory')->orderBy('id','desc')->first();
            $number = str_replace('SUP','',$unique ? $unique->id : 0);

            if($number == 0)
            {
                $number = 'SUP-00001';
            } 
            else
            {
                $number = 'SUP-'.sprintf("%5d", $number+1);
            }
            echo $number;

             $data = [
                'inv_image'=>$imagename,
                'item_name'=>$invname,
                'item_code'=>$number,
                'actual_qty'=>$actualqty,
                'qty_in'=>$actualqty,
                'cost_per_pcs'=>$costperpcs,
                'total_cost'=>$actualqty*$costperpcs,
                'uom'=>$request->input('uom'),
                'inv_category_id'=>$invtype,
                'status'=>$status,
            ];


            $result = DB::table('kmac_inventory')->insert($data);
             return back()->with(
                'message','Supplies Added');
        }
       
    }

    public function dep_menu(Request $request)
    {
        $code = $request->input('code');

        $result = DB::table('kmac_inventory')
        ->where('item_code','=', $code)
        ->get();

        echo json_encode($result);
    }
    
    public function edit(Request $request)
    {
        $id =  $request->input('id');
        $result = DB::table('kmac_inventory')
                ->join('kmac_category','kmac_category.cat_id','kmac_inventory.inv_category_id')
                ->where('id','=',$id)
                ->get();
        echo json_encode($result);
    }
    public function delete($id)
    {
        //$id = $request->input('id');
        echo $id;
        $result = DB::table('kmac_inventory')->where('id','=',$id)->delete();
         
            return back()->with('deleted','Item Deleted');
           
    }
    
    public function update(Request $request)
    {
       $id = $request->input('id'); 
       $itemname = $request->input('item-name');
       $itemcode = $request->input('item-code');
       $itemqty = $request->input('item-qty');
       $itemuom = $request->input('item-uom');
       $cps = $request->input('item-cps');
       $data = [
           'item_name'=>$itemname,
           'item_code'=>$itemcode,
           'actual_qty'=>$itemqty,
           'cost_per_pcs'=>$cps,
           'total_cost'=>$itemqty *$cps,
           'uom'=>$itemuom,
           
        ];
       
       $result = DB::table('kmac_inventory')
               ->where('id','=',$id)
               ->update($data);
       
       if($result){
           return true;
       } else {
           return false;
       }
        
    }
}
