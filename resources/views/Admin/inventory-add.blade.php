@extends('Admin.layout.main')
@section('content')
 
<div class="row my-3">
    <div class="col-sm-4 col-3">
        <h4 class="page-title">Add Inventory</h4>
    </div> 
    <div class="col">
    <a href="javascript:void(0)" class="btn btn-primary btn-rounded float-right back" onclick="history.back()">
      <i class="fa fa-plus"></i> Back</a>
    </div>
</div>

<div class="row">
    <div class="col-lg-8 offset-lg-2">
        <form method="POST" action="{{url('add/inventory')}}" enctype="multipart/form-data">  
 			@csrf
            <table>
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
                   
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="status" id="blog_inactive" value=0>
                    <label class="form-check-label" for="blog_inactive">
                    Inactive
                    </label>
                </div>
                    </td>
                </tr>
                <tr>
                    <td>
                      <div class="m-t-20 text-center">
                <button type="submit" class="btn btn-primary submit-btn">Add Inventory</button>
            </div>   
                    </td>
                </tr>
            </table>
           
          	 
            
           
        </form>
    </div>
</div>
 
@endsection
@section('javascript')
<script type="text/javascript">
	$(document).ready(function(){

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
                    alert(data);
                    //document.location.href="{{url('inventory')}}";
           		}
			});
		});

	});
</script>
@endsection