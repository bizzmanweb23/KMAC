@extends('Admin.layout.main')
@section('content')
 <!-- Button trigger modal -->
 

<!-- Modal -->
<div class="modal fade" id="add-inv-modal" class="add-inv-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title lead" id="exampleModalLongTitle">Add Inventory</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
<div class="row">
    <div class="col">
      <form method="POST" action="{{url('add/inventory')}}" enctype="multipart/form-data">  
            @csrf
            <table width="100%">
                <tr>
                    <td> <label>Inventory Name</label></td>
                    <td>
                         <input type="text" name="inv-name" class="form-control" placeholder="Inventory Name">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Select Type</label>
                    </td>
                    <td>
                        <select class="form-control" name="inv_type">
                            <option value='4'>ASSETS</option> 
                            <option value='1'>CHEMICALS</option>
                            <option value='2'>EQUIPMENTS</option>
                            <option value='3'>SUPPLIES</option> 
                        </select>    
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Add Quantity</label>
                    </td>
                    <td>
                        <input type="number" name="actual-qty" placeholder="Actual quantity" class="form-control">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Cost Per Pcs</label> 
                    </td>
                    <td>
                        <input type="text" name="cost-per-pcs" placeholder="Cost Per Pcs" class="form-control">
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>uom</label>
                    </td>
                    <td>
                        <input type="text" name="uom" placeholder="Uom" class="form-control">    
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Image</label>
                    </td>
                    <td>
                        <input type="file" name="inv-image" class="form-control">
                    </td>
                </tr>
                <tr>
                    <td>
                         <label class="display-block">Blog Status</label>
                    </td>
                    <td>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="status" id="blog_active" value=1 checked>
                        <label class="form-check-label" for="blog_active">
                        Active
                        </label> 
                    </div>
                   
                   
                    
                    <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="status" id="blog_inactive" value=0>
                    <label class="form-check-label" for="blog_inactive">
                    Inactive
                    </label>
                </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                    <div class="m-t-20 text-center">
                        <button type="submit" class="btn btn-primary submit-btn">Add Inventory</button>
                    </div>   
                    </td>
                </tr>
            </table>
           
             
            
           
        </form>
    </div>
</div>
      </div>
      
    </div>
  </div>
</div>
<div class="row mt-3">
<div class="col">
<div class="card-box">
<h4 class="card-title"> </h4>
<ul class="nav nav-tabs nav-tabs-solid">
    <li class="nav-item"><a class="nav-link active" href="#inventory-tab" data-toggle="tab">Inventory</a></li>
     
    <li class="nav-item"><a class="nav-link" href="#chemicals-tab" data-toggle="tab">Chemicals</a></li>
    <li class="nav-item"><a class="nav-link" href="#equipments-tab" data-toggle="tab">Equipments</a></li>
    <li class="nav-item"><a class="nav-link" href="#supplies-tab" data-toggle="tab">Supplies</a></li>

</ul>
<div class="tab-content">
                
<div class="tab-pane show active mt-5" id="inventory-tab">
<div class="row">
    <div class="col">
        <div class="row">
        <div class="col">
        <h4 class="page-title">Inventory</h4>
        </div>
        <div class="col">
        <a href="#" data-toggle="modal" data-target="#add-inv-modal" class="btn btn-primary   float-right back">
        <i class="fa fa-plus mr-1"></i> Add Inventory</a>
        </div>
        </div> 
    </div> 
</div>  


<table class="table table-sm table-bordered  ">
<thead>
   <tr>  
    <th>Item Name</th>
    <th>Item Code</th>
    <th>Qty</th>
    <th>Cost Per Pcs</th>
    <th>Uom</th>
    <th>Total Cost</th>
    <th>Action</th>
  </tr>
</thead>
<tbody>
    @foreach($inventory as $data)
    @if($data->actual_qty <= 20)
    <?php $color = 'text-danger'; ?>
    @endif
    @if($data->actual_qty > 20)
    <?php $color = ' ';?>
    @endif
    <tr class="<?php echo $color; ?>"> 
        <td> 
            {{$data->item_name}}
        </td>
        <td>
            {{$data->item_code}}
        </td>
        <td>
            {{$data->actual_qty}}
        </td>
        
        <td>
            {{$data->cost_per_pcs}}
        </td>
        <td>
            {{$data->uom}}
        </td>
        <td>
            {{$data->total_cost}}
        </td>
       <td class=" ">  
        <a class="btn btn-outline-info btn-sm edit-inv" 
           href="javascript:void(0)" 
           code="{{$data->id}}"
           data-toggle="modal" data-target="#edit-modal"
           >
            <i class="fa fa-pencil m-r-5"></i>  
        </a> 
        <a class="btn btn-outline-danger btn-sm delete-inv" href="{{route('delete.inv',$data->id)}}" code="{{$data->id}}" >
            <i class="fa fa-trash-o m-r-5"></i>  
        </a> 
        </td>
    </tr>
    @endforeach

</tbody>
</table>
</div>
<div class="tab-pane mt-5" id="chemicals-tab">
<div class="row">
<div class="col">
    <div class="row">
    <div class="col">
         <h4 class="page-title">Chemicals</h4>
    </div>
     
    </div> 
</div> 
</div> 
        <table class="table table-sm table-bordered">
        <thead>
          <tr>            
           <th>Item Name</th>
           <th>Item Code</th>
           <th>Qty</th>
           <th>Uom</th>
           <th>Action</th>
          </tr>
        </thead>
        <tbody>
            @foreach($chemicals as $data)
             @if($data->actual_qty <= 20)
            <?php $color = 'text-danger'; ?>
            @endif
            @if($data->actual_qty > 20)
            <?php $color = ' ';?>
            @endif
            <tr class="<?= $color?>"> 
                <td>
                    {{$data->item_name}}
                </td>
                <td>
                    {{$data->item_code}}
                </td>
                <td>
                    {{$data->actual_qty}}
                </td>
                <td>
                    {{$data->uom}}
                </td>
                 <td>
                    <a href="{{route('delete.inv',$data->id)}}" code='{{$data->id}}' class="btn btn-outline-danger delete-chemical">
                        <i class="fa fa-trash-o"></i>
                    </a>
                </td>
            </tr>
            @endforeach  
        </tbody>
   </table>  
</div>
    
<div class="tab-pane mt-5" id="equipments-tab">
<div class="row">
<div class="col">
    <div class="row">
    <div class="col">
         <h4 class="page-title">Equipments</h4>
    </div>
    
    </div> 
</div> 
</div> 
    <table class="table table-sm   table-bordered" width="100%">
       <thead>
        <tr> 
            <th>Item Name</th>
            <th>Item Code</th>
            <th>Qty</th>
            <th>Uom</th>
            <th>Action</th> 
        </tr>
       </thead>
       <tbody>
            @foreach($equipments as $data)
             @if($data->actual_qty <= 20)
            <?php $color = 'text-danger'; ?>
            @endif
            @if($data->actual_qty > 20)
            <?php $color = ' ';?>
            @endif
            <tr class="<?= $color?>"> 
                <td> 
                    {{$data->item_name}} 
                </td>
                <td>
                    {{$data->item_code}}
                </td>
                <td>
                   {{$data->actual_qty}}
                </td>
                <td>
                    {{$data->uom}}
                </td>
                <td>
                    <a href="{{route('delete.inv',$data->id)}}" code="{{$data->id}}" class="btn btn-outline-danger delete-equipment">
                        <i class="fa fa-trash-o"></i>
                    </a>
                </td>
                
            </tr>
           @endforeach 

       </tbody>
    </table>
    </div>


    <div class="tab-pane mt-5" id="supplies-tab">
<div class="row">
<div class="col">
    <div class="row">
    <div class="col">
         <h4 class="page-title">Supplies</h4>
    </div>
    
    </div> 
</div> 
</div> 
    <table class="table table-sm table-bordered" width="100%">
       <thead>
        <tr>
            <th>Item Name</th>
            <th>Item Code</th>
            <th>Qty</th>
            <th>Uom</th>
            <th>Action</th>
        </tr>
       </thead>
       <tbody>
           @foreach($supplies as $data)
            @if($data->actual_qty <= 20)
            <?php $color = 'text-danger'; ?>
            @endif
            @if($data->actual_qty > 20)
            <?php $color = ' ';?>
            @endif
            <tr class="<?= $color?>"> 
                <td> 
                    {{$data->item_name}} 
                </td>
                <td>
                    {{$data->item_code}}
                </td>
                <td>
                   {{$data->actual_qty}}
                </td>
                <td>
                    {{$data->uom}}
                </td> 
                 <td>
                    <a href="{{route('delete.inv',$data->id)}}" code="{{$data->id}}" class="btn btn-outline-danger delete-supplies">
                        <i class="fa fa-trash-o"></i>
                    </a>
                </td>
           </tr>
           @endforeach 

       </tbody>
    </table>
    </div>


</div>
</div>
</div>
<!-- Button trigger modal --> 

<!-- Modal -->
<div class="modal fade" id="edit-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-md" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title lead" id="exampleModalLabel">Edit Inventory</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>  
        <form id="update-form-data">@csrf
        <div class="modal-body"> 
                <table class="edit-modal-box" width="100%">
                
                </table> 
                <table width="100%">
                    <tr colspan="2">
                    <td  class="text-right">  
                        <button class="btn btn-danger  " data-dismiss="modal">close</button> 
                        <button type="button" class="btn btn-info update-inv  ">Update</button>  
                    </td>
                    </tr>
                </table>
               
        </div>
        </form>
    </div>
  </div>
</div>
<!-- <div id="delete_patient" class="modal fade delete-modal" role="dialog">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-body text-center">
                <img src="assets/img/sent.png" alt="" width="50" height="46">
                <h3>Are you sure want to delete this Patient?</h3>
                <div class="m-t-20"> 
                    <a href="#" class="btn btn-white" data-dismiss="modal">Close</a>
                    <button type="submit" class="btn btn-danger">Delete</button>
                </div>
            </div>
        </div>
    </div> 
</div> -->

   
    
@endsection
@section('javascript')
<script type="text/javascript">
     function PreviewImage(input){
        
            if (input.files && input.files[0]) {
                var reader = new FileReader(); 
                    reader.onload = function (e) {
                      $('.preview').attr('src', e.target.result).width(150).height(145);
                    };

                reader.readAsDataURL(input.files[0]);
                
            }
        }
        @if (Session::has('message'))
        toastr.success('{{ Session::get('message') }}');
        @elseif(Session::has('message'))
            toastr.error('{{ Session::get('message') }}');
        @endif

        @if (Session::has('deleted'))
        toastr.error('{{ Session::get('deleted') }}');
        @elseif(Session::has('deleted'))
            toastr.error('{{ Session::get('deleted') }}');
        @endif

    $(document).ready(function(){
        $('.table').DataTable(); 
        $('.table').addClass('table-striped');

        $('#add-inv').submit(function(e){
            e.preventDefault();
            $.ajax({
                url : '{{ url("add/inventory") }}',
                type : 'POST',
                data : new FormData(this),

                contentType: false,
                processData: false,
                cache: false, 

                success : function(data)
                {

                    $.each(data, function(key, value){
                            
                    }); 
                }
            });
        });

        // $('.delete-inv').click(function(e){
        //     e.preventDefault(); 
        //     console.log($(this).attr('cat_id'));
        //     var code = $(this).attr('code');
            
        //     $cnf = confirm('Deleted will not be recovered');
        //     if(!$cnf){
                
        //     } 
        //     else {
        //         $.ajax({
        //             url : '{{ url("delete/inv") }}',
        //             type : 'POST',
        //             data : {id: code},
        //             dataType: 'JSON',
        //             success : function(data)
        //             { 

        //                 toastr.error('...', 'Deleting', {
        //                     timeOut: 2000,
        //                     preventDuplicates: true,
                          
        //                     // Redirect 
        //                     onHidden: function() {
        //                         window.location.href = '{{url("inventory")}}';
        //                     }
        //                 });

        //             }
        //         });
        //     }
        // });
        //edit
        $('.edit-inv').click(function(e){
            e.preventDefault();
            $id = $(this).attr("code");
            $('.edit-modal-box').empty();
            $.ajax({
                url : '{{ url("edit/inv") }}',
                type : 'POST',
                data : {id: $id},
                dataType: 'JSON',
                success : function(data)
                {
                    $.each(data, function(key,value){ 
                        
                    $row = "<tr><td><input type='hidden' name='id' value='"+value.id+"'/></td></tr>";
                    $row += "<tr><td><label>Item Name</label></td><td><input name='item-name' class='form-control form-sm' value='"+value.item_name+"'></td></tr>";
                    $row += "<tr><td><label>Item Code</label></td><td><input name='item-code' class='form-control form-sm' value='"+value.item_code+"'></td></tr>";
                    $row += "<tr>";
                    $row += "<td><label>Qty</label></td><td><input name='item-qty' class='form-control form-sm' value='"+value.actual_qty+"'></td>";
                    $row += "</tr>";
                    $row += "<tr><td><lable>Uom</lable></td><td><input name='item-uom' class='form-control form-sm' value='"+value.uom+"'></td></tr>";
                    $row += "<tr><td><lable>Cost Per Pcs</labe></td><td><input name='item-cps' class='form-control form-sm' value='"+value.cost_per_pcs+"'></td></tr>";
                    
                   
                    $('.edit-modal-box').append($row);
                    }); 
                }
            });
        });
        
        $('.update-inv').click(function(e){
        e.preventDefault();
            var form  = $('#update-form-data').serialize();
            
            $cnf = confirm('Confirm Update');
            if(!$cnf){
            } else {
                
            $.ajax({
                url : "{{url('update/inventory')}}",
                type : "post",
                data : form,
                success : function(data){
                  
                        toastr.success('processing...', 'Inventory Updated', {
                        timeOut: 2000,
                        preventDuplicates: true, 
                        // Redirect 
                        onHidden: function() {
                              location.reload();
                        }
                    });
                }
            });
            }
        });


        // $('.delete-chemical').click(function(e){
        //    $id = $(this).attr('code');
        //    $cnf = confirm('Deleted will not be recovered');
        //    if(!$cnf)
        //     {

        //     } else { 
        //        $.ajax({
        //             url : "{{url('delete/inv')}}",
        //             type : "POST",
        //             data : {id: $id},
        //             success : function(data)
        //             {
        //                  toastr.error('wait...','Deleting', {
        //                     timeOut: 1000,
        //                     preventDuplicates: true,
                            
        //                     // Redirect 
        //                     onHidden: function() {
                                   
        //                        window.location.href = '{{url("inventory")}}';
        //                     }
        //                 });  
        //             }
        //        });
        //     }
        // });

        //  $('.delete-equipment').click(function(e){
        //     $id = $(this).attr('code');
        //     $cnf = confirm('Deleted will not be recovered');
        //    if(!$cnf)
        //     {

        //     } else { 
        //        $.ajax({
        //             url : "{{url('delete/inv')}}",
        //             type : "POST",
        //             data : {id: $id},
        //             success : function(data)
        //             {
        //                  toastr.error('wait...','Deleting', {
        //                     timeOut: 1000,
        //                     preventDuplicates: true,
                            
        //                     // Redirect 
        //                     onHidden: function() {
                                 
        //                        window.location.href = '{{url("inventory")}}';
        //                     }
        //                 }); 
        //             }
        //        });
        //     }
        // });

        //   $('.delete-supplies').click(function(e){
        //     $id = $(this).attr('code');
        //      $cnf = confirm('Deleted will not be recovered');
        //    if(!$cnf)
        //     {

        //     } else { 
        //        $.ajax({
        //             url : "{{url('delete/inv')}}",
        //             type : "POST",
        //             data : {id: $id},
        //             success : function(data)
        //             {
        //                  toastr.error('wait...','Deleting', {
        //                     timeOut: 1000,
        //                     preventDuplicates: true,
                            
        //                     // Redirect 
        //                     onHidden: function() { 
                                
        //                         window.location.href = '{{url("inventory")}}';
        //                     }
        //                 }); 
        //             }
        //        });
        //     }
        // });
    });
</script>
@endsection