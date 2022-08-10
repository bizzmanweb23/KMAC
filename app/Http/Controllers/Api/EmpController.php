<?php

namespace App\Http\Controllers\API;
use Session;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Contracts\Auth\Authenticatable;
use  App\Http\Controllers\RegisterController;
use DB;
use DateTime;

class EmpController extends Controller
{
    public $successStatus = 200;
    public $errorStatus = 400;
   
    public function clockin(Request $request)
    {

       $uid = $request->user_id;
       $user = User::find($uid,['id','name','email','phone']);
       $now = new DateTime(); 
      
       
       if($user){
           $data = [
            'employee_id'=>$user->id,
            'clock_in'=>$request->clock_in, 
            'date'=>$request->date, 
           ]; 
            $result = DB::table('kmac_attendance')->insert($data);
            if($result){
                 return response()->json([ 
                "SuccessCode"=>$this->successStatus, 
                "message"=>$user->name.' Checked In',
                 ], 400); 
            }
       }
       else {
        return response()->json([ 
            "error"=>$this->errorStatus,
            "Message"=>'Log In First',], 400); 
       }
    }

    public function clockout(Request $request)
    { 

       $uid = $request->user_id;
       $user = User::find($uid,['id','name','email','phone']);
       $now = new DateTime(); 
      
       if($user){
            $data = [ 
                'clock_out'=>$request->clock_out,  
            ]; 
            
            $result = DB::table('kmac_attendance')->where('employee_id',$uid)->update($data);
            if($result){
                 return response()->json([ 
                "SuccessCode"=>$this->successStatus, 
                "message"=>$user->name.' Checked out',
                 ], 400); 
            }
       }
       else {
            return response()->json([ 
            "error"=>$this->errorStatus,
            "Message"=>'Log In First',], 400); 
       }
    }
   
    public function inventory()
    {
        $result = DB::table('kmac_inventory')->select('inv_image','item_name','item_code','actual_qty')->get();

        if($result){
            return response()->json([
                "SuccessCode" => 200 ,
                "Message"=>"inventory !",
                "data"=>$result,
            ]);
        } else {
              return response()->json([ 
            "error"=>$this->errorStatus,
            "Message"=>'Log In First',], 400); 
        }
        

        
       
    }

    public function tasks()
    { 
 
        $result = DB::table('kmac_tasks')->get(); 
        if($result){
            return response()->json([
                'SuccessCode'=> 200,
                'Massage'=> 'All tasks',
                'data'=>$result,
            ]);   
        } else {
              return response()->json([ 
            "error"=>$this->errorStatus,
            "Message"=>'Log In First',], 400); 
        }
       
     
       
    }

    public function history_task(Request $request)
    {
         
        $id = $request->get('id');
        $result = DB::table('kmac_tasks')->where('employee_id','=',$id)->get(); 

        if(count($result) ){
            return response()->json([
                'SuccessCode'=> 200,
                'Massage'=> 'Tasks',
                'data'=>$result,
            ]);  
        }else {
             return response()->json([ 
                "error"=>$this->errorStatus,
                "Message"=>'No Task Found',
                ], 400); 
        }
        
    }

    public function history_assets(Request $request)
    {
         
        $id = $request->get('id');
        $result = DB::table('kmac_asset')->where('employee_id','=',$id)->get(); 

        if(count($result) ){
            return response()->json([
                'SuccessCode'=> 200,
                'Massage'=> 'Assets',
                'data'=>$result,
            ]);  
        }else {
             return response()->json([ 
                "error"=>$this->errorStatus,
                "Message"=>'No Task Found',
                ], 400); 
        }
        
    }


    public function assets()
    { 
        $result = DB::table('kmac_asset')->get(); 
        

        if($result){
            return response()->json([
            'SuccessCode'=> 200,
            'Massage'=> 'Assets',
            'assets'=>$result,
            
        ]);  
        }else {
              return response()->json([ 
            "error"=>$this->errorStatus,
            "Message"=>'Log In First',], 400); 
        }
        
    }
    public function home_page(Request $request)
    {
        
    }

   public function completed_jobs(Request $request)
   {
    $id = $request->get('id');

    $result = DB::table('kmac_tasks')
    ->select('kmac_tasks.*','kmac_status.status_name')
    ->join('kmac_status','kmac_status.status_id','kmac_tasks.status')
    ->where('employee_id',$id)->get(); 
    
    if($result){
        return response()->json([
            'SuccessCode'=> 200,
            'Massage'=> 'Completed jobs',
            'data'=>$result,
            'user_id'=> $id,
        ]);
    } else {
         return response()->json([ 
            "error"=>$this->errorStatus,
            "Message"=>'Log In First',], 400); 
    }

   }
 
    public function store(Request $request)
    {
        $id = session()->get('id');
        $clockin = date('m/d/Y h:i:s a', time());
        $clockout = date('m/d/Y h:i:s a', time());
        $data = [
            'emp_id'=> $id,
            'clockin'=>$clockin,
            'clockout'=>$clockout, 
            'status'=>$request->post('status'),
            'date'=>date('m/d/Y'),
           
        ];

        $result =  DB::table('kmac_attendance')
        ->select('name','email','phone','gender','date_of_birth')
        ->insert($data);
        
        if($result){
             return response()->json(["SuccessCode" => 200 ,"Message"=>"Checkd in!"], $this->successStatus);
        } else {
             return response()->json(["errorCode" => 404 ,"Message"=>"Error!"], $this->errorStatus); 
        }
       

    } 
     
    public function get_profile(Request $request)
    {
       $id = $request->get('id');

       $result = DB::table('admin')->where('id','=',$id)->get();
    
       if(count($result) >0){
         return response()->json([
            'SuccessCode'=> 200,
            'Massage'=> 'Profile',
            'data'=>$result,
        ]);
       } else {
         return response()->json([ 
            "error"=>$this->errorStatus,
            "Message"=>'Log In First',], 400); 
       }

    }

    
    public function mc_submittion(Request $request)
    { 
        $id = $request->get('userid');
        $pdf = $request->file('upload_pdf');
        
        $pdf_name = time().'.'.$pdf->getClientOriginalExtension();
        $photo = $request->file('upload_photos');
        $photo_name = time().'.'.$pdf->getClientOriginalExtension();
        
        $pdf->storeAs('mc_submittion_pdf',$pdf_name,'public');
        $photo->storeAs('mc_submittion_photo',$pdf_name,'public');

        $result = DB::table('kmac_mc_submittion')->insert([
            'emp_id'=>$id,
            'pdf'=>$pdf_name,
            'photo'=>$photo_name,
        ]);

        if($result){
             return response()->json([
                "SuccessCode" => 200,
                "Message"=>"Submitted!",

            ], $this->successStatus); 
        } else {
             return response()->json(["errorCode" => 400 ,"Message"=>"Error!"], $this->errorStatus); 
        }
         
        
    }

    public function job_category()
    {

        $result = DB::table('kmac_jobs_category')->get();
        if(count($result)>0){
            return response()->json([
                'SuccessCode'=> 200,
                'Massage'=> 'categories',
                'data'=>$result,
            ]); 
        } else {
            return response()->json([ 
                "error"=>$this->errorStatus,
                "Message"=>'No Category Found',], 400); 
        } 
         
    }

    public function job_description(Request $request)
    {
        $id = $request->get('jobid');
        $result = DB::table('kmac_jobs_category')->where('jobs_id',$id)->get();

        if(count($result)>0){
           return response()->json([
                'SuccessCode'=> 200,
                'Massage'=> 'Description',
                'data'=>$result,
            ]);  
        }

        else {
            return response()->json([ 
                "error"=>$this->errorStatus,
                "Message"=>'No Category Found',], 400); 
        }
    }

    
    
}
