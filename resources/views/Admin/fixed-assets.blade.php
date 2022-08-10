@extends('Admin.layout.main')
@section('content')
 
<div class="row my-3">
    <div class="col-sm-4 col-3">
        <h4 class="page-title">Add Assets</h4>
    </div> 
    <div class="col">
    <a href="javascript:void(0)"  data-toggle="modal" data-target="#exampleModal" class="btn btn-primary btn-rounded float-right back">
      <i class="fa fa-plus"></i> Add Asset</a>
    </div>
</div>
<div class="tab-pane mt-5" id="assets-tab"> 
    <div class="card-box">
        <div class="card-body">
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
           @foreach($assets as $data)
           <tr> 
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
                    <a href="javascript:void(0)" code="{{$data->id}}" 
                        class="btn btn-outline-info edit-asset"  data-toggle="modal" data-target="#edit-form">
                        <i class="fa fa-edit"></i>
                    </a>
                    <a href="{{route('delete.asset',$data->id)}}" code="{{$data->id}}" class="btn btn-outline-danger delete-supplies">
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
 
 <!-- Button trigger modal -->
  

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="row">
    <div class="col">
     <form  method="POST" action="{{url('add/asset')}}" enctype="multipart/form-data">  
            @csrf
            <div class="row"> 
                <div class="col">
                    <div class="form-group">
                        <label>Asset Name</label>
                       <input type="text" name="asset-name" class="form-control" placeholder="Asset Name">
                    </div>
                </div> 
                <div class="col">
                    <div class="form-group">
                        <label>Add Quantity</label>
                        <input type="number" name="asset-qty" placeholder="Actual quantity" class="form-control">
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label>Asset Unit</label>
                        <input type="text" name="asset-unit" placeholder="Asset Unit" class="form-control">
                    </div>
                </div>
            </div>
         
            <div class="row">
                <div class="col">
                    <div class="profile-upload"> 
                            <div class="upload-input"> 
                            <input type="file"  name="asset-image" onchange="PreviewImage(this)" class="form-control">
                            </div>
                    </div>

                </div>
            </div>
            <div class="row my-2">
                <div class="col">
                    <div class="rounded-1">
                        <img alt="" class="preview rounded img-thumb" width="150" height="145" src="{{ url('public/assets/img/user.jpg')}}">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="display-block">Inventory Status</label>
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
            </div>
            <div class="m-t-20 text-right">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary  ">Add Asset</button>
            </div>
        </form>
    </div>
</div>  
</div>
    
</div>
</div>
</div>

<!-- Button trigger modal --> 
<!-- Modal -->
<div class="modal fade" id="edit-form" tabindex="-1" role="dialog" 
aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Asset</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form  method="POST" action="{{url('update/asset')}}" enctype="multipart/form-data">  
            @csrf
            <div class="row"> 
                <div class="col">
                    <div class="form-group">
                        <label>Asset Name</label>
                        <input type="hidden" class="id" name="id">
                       <input type="text" name="asset-name" class="form-control asset-name" placeholder="Inventory Name">
                    </div>
                </div> 
                <div class="col">
                    <div class="form-group">
                        <label>Add Quantity</label>
                        <input type="number" name="asset-qty" placeholder="Actual quantity" class="form-control asset-qty">
                    </div>
                </div>
                <div class="col">
                    <div class="form-group">
                        <label>Asset Unit</label>
                        
                        <input type="text" name="asset-unit" placeholder="Asset Unit" class="form-control  ">
                    </div>
                </div>
            </div>
         
            <div class="row">
                <div class="col">
                    <div class="profile-upload"> 
                            <div class="upload-input"> 
                            <input type="file"  name="asset-image" onchange="PreviewImage(this)"
                             class="form-control asset-image">
                            </div>
                    </div>

                </div>
            </div>
            <div class="row my-2">
                <div class="col">
                    <div class="rounded-1">
                        <img alt="no image" class="preview rounded img-thumb" width="150" height="145" src="{{ url('public/assets/img/user.jpg')}}">
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="display-block">Inventory Status</label>
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
            </div>
            <div class="m-t-20 text-right">
                  <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary  ">Update Assets</button>
            </div>
        </form>
      </div>
   
    </div>
  </div>
</div>
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

        $('.edit-asset').click(function(e){
        e.preventDefault();
        $code = $(this).attr('code');
            $.ajax({
                url : "{{url('edit/asset')}}",
                type : "POST",
                data : {id: $code},
                dataType: "Json",
                success : function(data){
                    $.each(data, function(key, value){
                        $('.id').val(value.id);

                         $('.asset-name').val(value.item_name);
                         $('.asset-qty').val(value.actual_qty);
                         $('.asset-image').val(value.image);
                         $('.unit').val();
                         $('.preview').attr('src','{{url("public/asset_images")}}'+'/'+value.image)
                    });
                }
            });
        });
    });
</script> 
@endsection