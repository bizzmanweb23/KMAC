@extends('Admin.layout.main')
@section('content')

<div>
<div class="content my-3">

    <div class="row">
        <div class="col-sm-4 col-3">
            <h4 class="page-title">Employees</h4>
        </div>
        <div class="col-sm-8 col-9 text-right m-b-20">
            <a href="{{ route('emp.add') }}" class="btn btn-primary   float-right"><i class="fa fa-plus"></i> Add Employee</a>
        </div>
    </div>
    <div class="row doctor-grid">  
    @foreach($employee as $values)  
    <div class="col-md-4 col-sm-4  col-lg-3">
            <div class="profile-widget">
                <div class="doctor-img">
                    <a class="avatar " href="{{ route('emp.details',$values->employee_id) }}">
                        <img alt=""  src="{{url('public/storage/employee')}}/{{$values->image}}"> 
                    </a>
                </div>
                <div class="dropdown profile-action">
                    <a href="#" class="action-icon dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <i class="fa fa-ellipsis-v"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <a class="dropdown-item edit-emp" href="{{ route('emp.edit',$values->employee_id) }}" code="{{$values->employee_id}}">
                            <i class="fa fa-pencil m-r-5"></i> Edit
                        </a>
                        <a class="dropdown-item  " href="{{route('emp.delete',$values->employee_id)}}"   code="{{$values->employee_id}}">
                            <i class="fa fa-trash-o m-r-5"></i> 
                            Delete
                        </a>

                         <a class="dropdown-item" href="{{ route('emp.details',$values->employee_id) }}"    >
                            <i class="fa fa-eye m-r-5"></i> 
                            View Details
                        </a>
                    </div>
                </div>
                    <h5 class="lead doctor-name text-ellipsis">
                    <a href="profile.html">
                    {{$values->username}}
                    </a>
                    </h5>
                <div class="doc-prof"> 
                        <span>  {{$values->designation_name}}</span>
                </div>
                <div class="user-country"> 
                    <a href="#"> <i class="fa fa-map-marker"></i>   {{$values->country}}</a>
                </div>
            </div>
        </div>
    @endforeach 
    </div>

     @if (Session::has('error'))

     <div class="alert alert-danger">
         <p>
             {{Session::get('error')}}
         </p>
     </div>
       
    @endif
   <!--  <div class="row">
        <div class="col-sm-12">
            <div class="see-all">
                <a class="see-all-btn" href="javascript:void(0);">Load More</a>
            </div>
        </div>
    </div> -->
</div>
 
</div>
<!-- Button trigger modal -->
    @if (Session::has('error'))

    <script type="text/javascript">
      toastr.error("{{ Session::get('error') }}");
    </script>
       
    @elseif(Session::has('success'))
    <script type="text/javascript">
        toastr.error("{{ Session::get('success') }}");
    </script>
    @endif 

    @if (Session::has('message'))
    <script type="text/javascript">
        toastr.success("{{ Session::get('message') }}");
    </script>
    @elseif(Session::has('message'))
    <script type="text/javascript">
        toastr.error("{{ Session::get('message') }}");
    </script>
    @endif

@endsection
@section('javascript')
<script type="text/javascript"> 
 
 
$(document).ready(function(){
    //toastr.options.timeOut = 10000;

  
    // $('.edit-emp').click(function(e){
    //     e.preventDefault();
    //     $id = $(this).attr('code');

    //     $.ajax({
    //         url : "{{url('employee/edit')}}",
    //         type : "POST",
    //         data : $id,
    //         success : function(data){
    //             alert(data);
    //         }
    //     });

    // });

    

    $('.delete').click(function(e){
        e.preventDefault();
        $id = $(this).attr('code');
         $.ajax({
                url : "{{url('employee/delete')}}"+"/"+$id,
                type : "GET",
                data : {id:$id},
                success : function(data){
                    
                     toastr.error('Employee Deleted');
                   if(location.reload()){
                    
                   }
                }
            });

    });
});

</script>
@endsection