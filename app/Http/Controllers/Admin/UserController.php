<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function profile()
    {
        return view('Admin.Employee.profile');
    }
    public function edit_profile()
    {
        return view('Admin.Employee.edit-profile');
    }
}
