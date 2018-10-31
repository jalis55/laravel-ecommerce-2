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
             
              <div class="row">
                <div class="col-sm-9">
                   <h3 class="box-title">Add Product</h3>
                </div>
                 <div class="col-sm-3">
                  <h4>Import From Excel</h4>
                   <div style="border: 1px solid #a1a1a1;margin-top: 5px;padding: 10px;" class="text-right">  
                    <a href="#importExcelModal" data-toggle="modal"  class="btn btn-success btn-sm">  Import</a>
                     </div>
                </div>
              </div>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <form  role = "form" method="post" action="{{ url('admin/products/store')}}" enctype="multipart/form-data">
        {!! csrf_field() !!}
              <div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Product Name</label>
                  <input type="text" class="form-control" required="required" id="product_name" name="product_name" placeholder="Product Name">
                </div>
        
                <div class="form-group">
                  <label for="exampleInputPassword1">Product Sku</label>
                  <input type="text" class="form-control" name="product_sku" id="product_sku" placeholder="SKU">
                </div>
        
        <div class="form-group">
                  <label for="exampleInputPassword1">Product Price</label>
                  <input type="text" class="form-control" required="required" name="product_price" id="product_price" placeholder="Price">
                </div>
        
        <div class="form-group">
                  <label for="exampleInputPassword1">Product Description</label>
                  <textarea class="form-control" name="product_long_description" rows="10" cols="100"> </textarea>
                </div>
        
                <div class="form-group">
                  <label for="exampleInputFile">Product Image</label>
                  <input type="file" id="image1" name="product_image">

                  <p class="help-block">max width:1000px, height:1000px</p>
                </div>
        
         <div class="form-group">
                  <label for="exampleInputFile">Is it Special Product ?</label>
                  <input type="checkbox" id="is_latest" name="is_latest">
                </div>
        
         <div class="form-group">
                  <label for="exampleInputFile">Is it Featured Product ?</label>
                  <input type="checkbox"  id="is_featured" name="is_featured">
                </div>
        
        
        <div class="form-group">
                  <label for="exampleInputPassword1">Category</label>
                  <select name="category_row_id" class = "form-control" required="required">
          <option value="">Select</option>         
          @foreach( $data['categories_list'] as $row)
          <option value="{{ $row->category_row_id}}">
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
      <!--Import Form Excel  Modal -->
  <div class="modal fade" id="importExcelModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">@Import</h4>
        </div>
        <div class="modal-body">
    <div class="panel panel-primary" style="margin:0;padding:0">
      <div class="panel-heading">
        <h3 class="panel-title" style="padding: 0px;font-size:25px;"><strong>Import csv or excel file into database</strong></h3>
      </div>
      <div class="panel-body">

          @if ($message = Session::get('success'))
          <div class="alert alert-success" role="alert">
            {{ Session::get('success') }}
          </div>
        @endif

        @if ($message = Session::get('error'))
          <div class="alert alert-danger" role="alert">
            {{ Session::get('error') }}
          </div>
        @endif

        <h3>Import File Form:</h3>
        <form style="border: 4px solid #a1a1a1;margin-top: 15px;padding: 20px;" action="{{ URL::to('/admin/importExcel') }}" class="form-horizontal" method="post" enctype="multipart/form-data">

          <input type="file" name="import_file" />
          {{ csrf_field() }}
          <br/>

          <button class="btn btn-primary">Import CSV or Excel File</button>

        </form>
        
      </div>
    </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>

@endsection  
