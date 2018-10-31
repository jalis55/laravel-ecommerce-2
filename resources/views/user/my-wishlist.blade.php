@extends('layouts.user-app')
@section('content')
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
     

          <div class="box">
            <div class="box-header">
              <h3 class="box-title">My Withlist</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead >
                <tr>
                  <th class="text-center">Product Name</th>
                  <th class="text-center">Image</th>
                  <th class="text-center">SKU</th>
                  <th class="text-center">Price</th>
                  <th class="text-center">Action</th>
                </tr>
                </thead>
                <tbody>
                
                @foreach($data['my-wishlist'] as $row)
                 <tr>
                  <td class="text-center">{{$row->product_name}}</td>
                  <td class="text-center"> <img src="{{asset('/public/uploads/products/')}}/{{$row->product_image}}" width="150" height="160"></td>
                  <td class="text-right">{{$row->product_sku}}</td>
                  <td class="text-center">{{$row->product_price}}</td>
                  <td style="width: 18%">
                     <form method="post" action="{{url('/')}}/add-to-cart">
        {{ csrf_field() }}  
        <div>
                            <input type="hidden" name="product_row_id" value="{{ $row->product_row_id}}"/>
                              <input type="hidden" class="qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
                              <button  class="add-to-cart-mt" type="submit"> <i class="fa fa-shopping-cart"></i><span> Add to Cart</span> </button>
                          
                        
                        </div>
      </form>
                  </td>
               
                </tr>
                @endforeach
               
                </tbody>
                <tfoot>
                <tr>
                 <th class="text-center">Product Name</th>
                   <th class="text-center">Image</th>
                  <th class="text-center">SKU</th>
                  <th class="text-center">Price</th>
                    <th class="text-center">Action</th>
                </tr>
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
    <!-- /.content -->

@endsection

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!-- page script -->
<script type="text/javascript">
  $(function () {
    $("#example1").DataTable();
    $('#example2').DataTable({
      "paging": true,
      "lengthChange": false,
      "searching": false,
      "ordering": true,
      "info": true,
      "autoWidth": false
    });
  });
</script>