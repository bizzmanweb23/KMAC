<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class ApiController extends Controller
{
    $successCode = 200;
    public function clockin()
    {
        $data = [
             
            'clockin'=> $request->input('clockin'),
            'clockout'=> $request->input('clockout'),
            'status'=>$request->input('status');
        ];

        $result = DB::table('attendance')->insert($data);
        if($result){
            return response()->json([
                'success code'=>200,
            ])
        }
    }
}
