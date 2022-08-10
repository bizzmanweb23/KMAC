@extends('Admin.layout.main')
@section('content')
<div class="content my-3">
<h3 class="page-title">
    Dashboard
</h3>
<div class="row">
    <div class="col">
        <div class="dash-widget">
            <span class="dash-widget-bg1"><i class="fa fa-users" aria-hidden="true"></i></span>
            <div class="dash-widget-info text-right">
                <h3>{{$employee}}</h3>
                <span class="widget-title1">
                     <a href="{{url('employee/list')}}" class="text-white ">EMPLOYEE</a>
                    <i class="fa fa-check" aria-hidden="true"></i></span>
            </div>
        </div>
    </div>
    <div class="col">
        <div class="dash-widget">
            <span class="dash-widget-bg2"><i class="fa fa-bars"></i></span>
            <div class="dash-widget-info text-right">
                <h3>{{$inventory}}</h3>
                <span class="widget-title2">
                    <a href="{{url('inventory')}}" class="text-white ">INVENTORY</a>
                    <i class="fa fa-check" aria-hidden="true"></i></span>
            </div>
        </div>
    </div>
    
</div>
</div>


@endsection
@section('javascript')
<script type="text/javascript">
    $(document).ready(function(){
         
    });
</script>
@endsection