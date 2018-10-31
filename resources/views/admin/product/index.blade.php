@extends('admin.layouts.app')
@section('content')
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
    
          <div class="box">
            <div class="box-header">
              <div class="row">
                <div class="col-sm-8">
                  <h3 class="box-title">Manage Products</h3>
                </div>
               
                <div class="col-sm-4">
                  <h4>Export From Database</h4>
          <div style="border: 1px solid #a1a1a1;margin-top: 5px;padding: 10px;" class="text-right">     
            <a href="{{ url('/admin/downloadExcel/xls') }}"><button class="btn btn-success btn-sm">Download Excel xls</button></a>
          <a href="{{ url('/admin/downloadExcel/xlsx') }}"><button class="btn btn-success btn-sm">Download Excel xlsx</button></a>
          <a href="{{ url('/admin/downloadExcel/csv') }}"><button class="btn btn-success btn-sm">Download CSV</button></a>
       </div>
                </div>

              </div>
              
               
            </div>

            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
          <th>Product Name</th>              
          <th> Price</th>   
          <th>Image</th>          
          <th>Category Name</th>       
          <th>Special</th>     
          <th>Featured</th>
          <th>Action</th>       
                </tr>
                </thead>
                <tbody>
                 @foreach($data['products_list'] as $row)    
          <tr>            
            <td>{{ $row->product_name }}</td> 
            <td>{{ $row->product_price }}</td>            
            <td><img alt="product" style="width:50px;height:50px" src="{{ asset('/')}}public/uploads/products/{{ $row->product_image }}"></td>            
            <td>{{ isset($row->category_info->category_name) ? $row->category_info->category_name : '' }}</td>            
            <td>{{ $row->is_latest ? 'Yes' : '' }}</td>
            <td>{{ $row->is_featured ? 'Yes' : '' }}</td>                       
            <td> <a href="{{ url('/')}}/admin/products/edit/{{$row->product_row_id}}"> Edit </a> | <a href="javascript:void(0)" class="deleteLink" deleteID="{{$row->product_row_id}}" >Delete  </a> </td>    
            <td>&nbsp;</td>
          </tr>
        @endforeach
                
                </tfoot>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
 

<script type="text/javascript">

    
    $('.deleteLink') . click( function() 
    {
    if( !confirm('Are you sure you want to delete ?'))
    return false;
  
  var id  = $(this).attr('deleteID'); 
  window.location.href = "{{url('/')}}/admin/products/deleteRecord/" + id;
   
    });
</script>
@endsection
