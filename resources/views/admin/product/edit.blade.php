@extends('admin.layouts.app')

@section('content')
<!-- Main content -->
    <section class="content">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Add Product</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form  role = "form" method="post" action="{{ url('admin/products/update')}}" enctype="multipart/form-data">
				{!! csrf_field() !!}
				<input type="hidden" name="hidden_row_id" value="{{ $data['single_info']->product_row_id }}">
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Product Name</label>
                  <input type="text" class="form-control" required="required" value="{{ $data['single_info']->product_name }}"  id="product_name" name="product_name" placeholder="Product Name">
                </div>
				
                <div class="form-group">
                  <label for="exampleInputPassword1">Product Sku</label>
                  <input type="text" class="form-control" value="{{ $data['single_info']->product_sku }}"   name="product_sku" id="product_sku" placeholder="SKU">
                </div>
				
				<div class="form-group">
                  <label for="exampleInputPassword1">Product Price</label>
                  <input type="text" class="form-control" required="required" name="product_price" value="{{ $data['single_info']->product_price }}" id="product_price" placeholder="Price">
                </div>
				
				<div class="form-group">
                  <label for="exampleInputPassword1">Product Description</label>
                  <textarea class="form-control" name="product_long_description" rows="10" cols="100">{{ $data['single_info']->product_long_description}}</textarea>
                </div>
				
				
                <div class="form-group">
                  <label for="exampleInputFile">Product Image</label>
                  <input type="file" id="image1" name="product_image">

                  <p class="help-block">max width:1000px, height:1000px</p>
                </div>
				
				<div class = "form-group">
					<label for="exampleInputEmail1">Product Name</label>       
					<div id ="image1_holder" >                       
						 @if( $data['single_info']->product_image)
						 <img src="{{ url('/public')}}/uploads/products/{{ $data['single_info']->product_image }}" style="height:100px;width:100px" alt="produt image" />
						 <a href="javascript:void(0)" image1_name="{{ $data['single_info']->product_image }}" delete_row_id="{{ $data['single_info']->product_row_id }}" id="image1_delete"><img src="{{ url('/public')}}/common_images/bullet_cross.png"  alt="Delete"/></a>
						 @endif
					</div>
				</div> 
   
				
				 <div class="form-group">
                  <label for="exampleInputFile">Is it Special Product ?</label>
                  <input type="checkbox" @if( $data['single_info']->is_latest == 1) checked="checked" @endif id="is_latest" name="is_latest">
                </div>
				
				 <div class="form-group">
                  <label for="exampleInputFile">Is it Featured Product ?</label>
                  <input type="checkbox" @if( $data['single_info']->is_featured == 1) checked="checked" @endif id="is_featured" name="is_featured">
                </div>
				
				
				<div class="form-group">
                  <label for="exampleInputPassword1">Category</label>
                  <select name="category_row_id" class = "form-control" required="required">
					<option value="" @if( $data['single_info']->category_row_id == "") selected="selected" @endif >Select</option>         
					  @foreach( $data['categories_list'] as $row)
					  <option value="{{ $row->category_row_id}}"  @if( $data['single_info']->category_row_id == $row->category_row_id) selected="selected" @endif>
							@if($row->level == 0) <b>  @endif  
						   @if($row->level == 1) &nbsp; - @endif 
						   @if($row->level == 2) &nbsp; &nbsp; &nbsp;  - @endif            
						   {{ $row->category_name }} 
							@if($row->level == 0) </b>  @endif  
					   </option>
					  @endforeach
					</select>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-primary">Submit</button>
              </div>
            </form>
          </div>
          <!-- /.box -->
        </div>
        <!--/.col (left) -->
       
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
<script type="text/javascript">
$('#image1').bind('change',setImage);
    function setImage(event) {    
        var files = event.target.files;
        var fileName = files[0].name;
        var tmpPath = URL.createObjectURL(event.target.files[0]);
        $('#image1_holder') . html('');
        $('#image1_holder') . html('<img src = "' + tmpPath + '" alt="Image" style="height:100px;" />');
    }    
    
    
    $('#image1_delete') . click( function() 
    {
    if( !confirm('Are you sure you want to delete ?'))
    return false;
    
    var id  = $(this).attr('delete_row_id');
    var file_name  = $(this).attr('image1_name');    
    $('#image1_holder') . html('');
    $.ajax({
        type: "GET",
        url : "{{url ('/') }}" + "/admin/products/deleteImageOnly/" + id + "/" + file_name ,                         
        success : function(status){
         $('#image1_holder') . html('<span class="inline_success_message">Image has been deleted</span>');
         $('#image1_holder').delay(3000).fadeOut('slow', function(){
             $('#image1_holder').html('');    
             $('#image1_holder').fadeIn('slow');    
         });
         
        }
    });
    }); 
</script>
@endsection  