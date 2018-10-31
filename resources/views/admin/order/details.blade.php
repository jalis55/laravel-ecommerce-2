@extends('admin.layouts.app')

@section('content')

<div class="main-container col1-layout">
  <div class="main container" style="background-color: white;">
    <a href="{{URL::to('/admin/download/')}}/{{$data['orders_details']->order_row_id}}" class="btn btn-info"> Preview & Print Invoice</a>
    <div class="col-main">
      <div class="order-detail-content">
        <div class="table-responsive">
            <table class="table table-bordered">
              <caption class="text-center">ORD-{{sprintf('%06d',$data['orders_details']->order_row_id)}}</caption>
                              <thead>
                                <tr>
                                 
                                  <th class="cart_product">Product Code</th>
                                  <th class="cart_product" width="160px">Image</th>
                                  <th class="text-center">Unit price</th>
                                  <th class="text-center">Qty</th>
                                  <th class="text-center">Total</th> 
                                  
                                </tr>
                              </thead>
                              <tbody>

                                  @foreach(json_decode($data['orders_details']->order_details) as $od)
                    <tr>

                      <td>{{$od->product_name}}</td>
                       <td><img src="{{ url('/public/uploads/products')}}/{{$od->product_image}}" height="150" width="140"></td>
                      <td class="text-right">{{$od->product_price}}</td>
                      <td class="text-right">{{$od->product_qty}}</td>
                        <td class="text-right">{{$od->product_total_price}}</td>
                    </tr>
                    
                   
                       @endforeach

                                  
                              </tbody>
                              <tfoot>
                                <tr>
                                  <td colspan="4" class="text-right">Total :</td>
                                  <td colspan="4" class="text-right">{{  $data['total_price']}}</td>
                                </tr>

                              </tfoot>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>

<script type="text/javascript"> 
 $('.deleteLink').click( function() {
  if( confirm('Are you sure to Delete ? ') )
  {
   var deleteID = $(this).attr('deleteID');   
    window.location.href = "{{ url('/')}}/admin/blog/deleteRecord/" + deleteID;    
  }
        
 });
 
 </script> 

@endsection