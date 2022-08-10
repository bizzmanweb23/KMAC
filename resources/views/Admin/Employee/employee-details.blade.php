 
@extends('Admin.layout.main')
@section('content')
<div class="row my-3">
        <div class="col-sm-7 col-6">
            <h4 class="page-title">My Profile</h4>
        </div>

        <div class="col-sm-5 col-6 text-right m-b-30">
            <a href="javascript:void(0)" onclick="window.history.go(-1); return false;" class="btn btn-primary  "><i class="fa fa-angle-left"></i> Back</a>
        </div>
</div>
<div class="content pb-5"> 
	@foreach($result as $row)
    <div class="card-box profile-header">
        <div class="row">
            <div class="col-12">
                <div class="profile-view">
                    <div class="profile-img-wrap">
                        <div class="profile-img">
                            <a href="javscript:void(0)">
                            	<img class="rounded" src="{{url('public/storage/employee')}}/{{$row->image}}" alt=""></a>
                        </div>
                    </div>
                    <div class="profile-basic">
                        <div class="row">
                            <div class="col-3">
                                <div class="profile-info-left">
                                    <h3 class="user-name m-t-0 mb-0">{{$row->first_name.' '.$row->last_name}}</h3>
                                    <span class="  text-muted">{{$row->designation_name}}</span>
                                    <div class="staff-id">Employee ID : {{$row->emp_code}}</div>
                                  <!--   <div class="staff-msg"><a href="#" class="btn btn-primary">Send Message</a></div> -->
                                </div>
                            </div>
                            <div class="col-9">
                                <ul class="personal-info">
                                    <li>
                                        <span class="title">Phone:</span>
                                        <span class="text"><a href="#">{{$row->emp_contact}}</a></span>
                                    </li>
                                    <li>
                                        <span class="title">Email:</span>
                                        <span class="text"><a href="#">{{$row->email}}</a></span>
                                    </li>
                                    <li>
                                        <span class="title">Birthday:</span>
                                        <span class="text">{{$row->date_of_birth}}</span>
                                    </li>
                                      <li>
                                        <span class="title">Gender:</span>
                                        <span class="text">{{$row->gender}}</span>
                                    </li>
                                    <li>
                                        <span class="title">Address:</span>
                                        <span class="text">{{$row->address }} </span>
                                    </li>
                                    <li>
                                        <span class="title">Country:</span>
                                        <span class="text"> {{$row->country}} </span>
                                    </li>
                                    <li>
                                        <span class="title">City:</span>
                                        <span class="text"> {{$row->city}}, </span>
                                    </li>
                                    <li>
                                        <span class="title">Postal Code:</span>
                                        <span class="text"> {{$row->zipcode}},</span>
                                    </li>
                                  
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>                        
            </div>
        </div>
    </div>
    @endforeach
    <div class="profile-tabs">
        <ul class="nav nav-tabs nav-tabs-bottom">
                <li class="nav-item"><a class="nav-link active" href="#about-cont" data-toggle="tab">About</a></li>
                <li class="nav-item"><a class="nav-link" href="#bottom-tab2" data-toggle="tab">Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="#bottom-tab3" data-toggle="tab">Messages</a></li>
        </ul> 
    <div class="tab-content">
    <div class="tab-pane show active" id="about-cont">
        <div class="row">
        <div class="col-md-12">
            <div class="card-box">
                <h3 class="card-title">Education Informations</h3>
                <div class="experience-box">
                    <ul class="experience-list">
                        <li>
                            <div class="experience-user">
                                <div class="before-circle"></div>
                            </div>
                            <div class="experience-content">
                                <div class="timeline-content">
                                    <a href="#/" class="name">International College of Medical Science (UG)</a>
                                    <div>MBBS</div>
                                    <span class="time">2001 - 2003</span>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="experience-user">
                                <div class="before-circle"></div>
                            </div>
                            <div class="experience-content">
                                <div class="timeline-content">
                                    <a href="#/" class="name">International College of Medical Science (PG)</a>
                                    <div>MD - Obstetrics & Gynaecology</div>
                                    <span class="time">1997 - 2001</span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            
        </div>
    </div>
    </div>
        <div class="tab-pane" id="bottom-tab2">
                Tab content 2
        </div>
        <div class="tab-pane" id="bottom-tab3">
                Tab content 3
        </div>
    </div>
    </div>
</div>
 
 
@endsection
@section('javascript')
 
@endsection