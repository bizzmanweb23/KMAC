<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use File;
class EmployeeController extends Controller
{
    public function index()
    {

        $data = DB::table('kmac_employees')
        ->join('kmac_designations','kmac_designations.designation_id','kmac_employees.designation_id')
        ->get(); 

        $country = DB::table('countries')->get();
        $department = DB::table('kmac_departments')->get();
        $designation = DB::table('kmac_designations')->get();
        
        return view('Admin.Employee.employee')->with([
            'employee'=>$data, 
            'result'=>$data,
            'country'=>$country,
            'department'=>$department,
            'designation'=>$designation,
        ]);  

    }
    public function add_employee()
    {
        $data = DB::table('kmac_employees')
        ->join('kmac_designations','kmac_designations.designation_id','kmac_employees.designation_id')
         ->get();
        $country = DB::table('countries')->get();
        $department = DB::table('kmac_departments')->get();
        $designation = DB::table('kmac_designations')->get();
        $company = DB::table('kmac_companies')->get();

        return view('Admin.Employee.add-employee')->with([
            'result'=>$data,
            'country'=>$country,
            'department'=>$department,
            'designation'=>$designation,
            'company'=>$company,
        ]);

    }
    public function store_employee(Request $request)
    {
        $request->validate([
             
            'first_name'=>'required',
             
        ]);

        print "<pre>";
        print_r($request->input());
        exit();
        
        $file = $request->file('image');
        $filename = 'Emp-'.time().'.'.$file->getClientOriginalExtension();

        //$file->move(public_path('Employee'), $filename);
         $file->storeAs('employee',$filename,'public');

        $unique_id = DB::table('kmac_employees')->orderBy('employee_id', 'desc')->first();
        $number = str_replace('EMP', '', $unique_id ? $unique_id->employee_id  : 0);
        if ($number == 0) {
            $number = 'EMP-00001';
        } else {
            $number = "EMP" . sprintf("%05d", $number + 1);
        }
       
        $data = [
            
            'emp_code'=>$number,
            'first_name'=>$request->input('first-name'),
            'last_name'=>$request->input('last-name'),
            'email'=>$request->input('email'),
            'company_id'=>$request->input('company'),
            'username'=>$request->input('first-name').' '.$request->input('last-name'), 
           
            'designation_id'=>$request->input('designation'),
            'department_id'=>$request->input('department'),
            'date_of_birth'=>$request->input('dob'),
            'gender'=>$request->input("gender"),
            'emp_contact'=>$request->input('phone'),
            'date_of_joining'=>$request->input('date-of-join'), 
            
            'country'=>$request->input('country'),
            'city'=>$request->input('city'),
            'state'=>$request->input('state'),
            'zipcode'=>$request->input('postal-code'),
           
            'address'=>$request->input('address'), 
            'image'=>$filename,
        ];
        
        $result = DB::table('kmac_employees')->insert($data);
        if($result){
   return response()->json($result);
        }
    
         
    }

    public function edit($id)
    {
        
        $data = DB::table('kmac_employees')
       
        ->join('kmac_designations','kmac_designations.designation_id','kmac_employees.designation_id')
        ->join('kmac_departments','kmac_departments.department_id','kmac_employees.department_id')
        ->where('employee_id',$id)
        ->get(); 
        
        // print "<pre>";
        // print_r($data);
        
        // exit();

        $country = DB::table('countries')->get();
        $department = DB::table('kmac_departments')->get();
        $designation = DB::table('kmac_designations')->get();
        $company = DB::table('kmac_companies')->get();

        return view('Admin.Employee.edit-employee')->with([
            'result'=>$data,
            'country'=>$country,
            'department'=>$department,
            'designation'=>$designation,
            'company'=>$company,
        ]);

    }
    public function get_emp_details($id)
    {
        
        $data = DB::table('kmac_employees')
       
        ->join('kmac_designations','kmac_designations.designation_id','kmac_employees.designation_id')
        ->join('kmac_departments','kmac_departments.department_id','kmac_employees.department_id')
        ->where('employee_id',$id)
        ->get(); 
        
        // print "<pre>";
        // print_r($data);
        
        // exit();

        $country = DB::table('countries')->get();
        $department = DB::table('kmac_departments')->get();
        $designation = DB::table('kmac_designations')->get();
        $company = DB::table('kmac_companies')->get();

        return view('Admin.Employee.employee-details')->with([
            'result'=>$data,
            'country'=>$country,
            'department'=>$department,
            'designation'=>$designation,
            'company'=>$company,
        ]);

    }

    public function update(Request $request)
    {   
        $id = $request->input('id');
        $image = DB::table('kmac_employees')->select('image')->where('employee_id',$id)->get();
      
        if($request->hasFile('image'))
        { 
            $image_path = "public/storage/employee/".$image[0]->image; 

            if (file_exists($image_path)) { 
               @unlink($image_path); 
            }

            $file = $request->file('image');
            $filename = 'emp_image_'.time().'.'.$file->getClientOriginalExtension(); 
            echo $filename;   
            
            //$file->move(public_path('Employee'), $filename);
            $file->storeAs('employee',$filename,'public');
            $unique_id = DB::table('kmac_employees')->orderBy('employee_id', 'desc')->first();
            $number = str_replace('EMP', '', $unique_id ? $unique_id->employee_id  : 0);
            if ($number == 0) {
                $number = 'EMP-00001';
            } else {
                $number = "EMP" . sprintf("%05d", $number + 1);
            }

         $data = [
            
            'emp_code'=>$number,
            'first_name'=>$request->input('first-name'),
            'last_name'=>$request->input('last-name'),
            'email'=>$request->input('email'),
            'company_id'=>$request->input('company'),
            'username'=>$request->input('first-name').' '.$request->input('last-name'), 
           
            'designation_id'=>$request->input('designation'),
            'department_id'=>$request->input('department'),
            'date_of_birth'=>$request->input('dob'),
            'gender'=>$request->input("gender"),
            'emp_contact'=>$request->input('phone'),
            'date_of_joining'=>$request->input('date-of-join'), 
            
            'country'=>$request->input('country'),
            'city'=>$request->input('city'),
            'state'=>$request->input('state'),
            'zipcode'=>$request->input('postal-code'),
           
            'address'=>$request->input('address'), 
             'image'=>$filename,
        ];  
         
        }

        else
        { 
        
            $unique_id = DB::table('kmac_employees')->orderBy('employee_id', 'desc')->first();
            $number = str_replace('EMP', '', $unique_id ? $unique_id->employee_id  : 0);
            if ($number == 0) {
                $number = 'EMP-00001';
            } else {
                $number = "EMP" . sprintf("%05d", $number + 1);
            }
  
            $data = [ 
                'emp_code'=>$number,
                'first_name'=>$request->input('first-name'),
                'last_name'=>$request->input('last-name'),
                'email'=>$request->input('email'),
                'company_id'=>$request->input('company'),
                'username'=>$request->input('first-name').' '.$request->input('last-name'),  
                'designation_id'=>$request->input('designation'),
                'department_id'=>$request->input('department'),
                'date_of_birth'=>$request->input('dob'),
                'gender'=>$request->input("gender"),
                'emp_contact'=>$request->input('phone'),
                'date_of_joining'=>$request->input('date-of-join'),  
                'country'=>$request->input('country'),
                'city'=>$request->input('city'),
                'state'=>$request->input('state'),
                'zipcode'=>$request->input('postal-code'), 
                'address'=>$request->input('address'),  

            ];  
            
        }
        $result = DB::table('kmac_employees')->where('employee_id',$id)->update($data); 
        return redirect('employee/list')->with('message','Employee Updated');

        
    }
    public function delete($id)
    {
        
        $get = DB::table('kmac_employees')->where('employee_id',$id)->get();

        $image = $get[0]->image;
        $image_path = 'public/Employee/'.$image; 

        if (file_exists($image_path)) { 
           @unlink($image_path); 
           $result = DB::table('kmac_employees')->where('employee_id',$id)->delete();
        }

        if($result) {
            return back()->with('error', 'Employee Deleted');
        }
        else {
            return back()->with('error', 'Failed! User not Deleted');
        }
    }
}
