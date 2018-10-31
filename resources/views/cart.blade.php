<!DOCTYPE html>
<html lang="en">
@include('../common/head')
</head>

<body class="product-page">
<!--[if lt IE 8]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
  <![endif]--> 

@include('../common/mobile-menu')
<div id="page"> 
  @include('../common/header')

  <!-- Breadcrumbs -->
  
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <li class="home"> <a title="Go to Home Page" href="{{url('/')}}">Home</a><span>&raquo;</span></li>            
            <li><strong>Cart Page</strong></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End --> 
  <!-- Main Container -->
    <div class="main-container col1-layout">
    <div class="main container">
    <div class="col-main">
       @if( isset($data['temp_orders']) && count($data['temp_orders'] ) )
      
            <div class="order-detail-content">
              <div class="table-responsive">
                <table class="table table-bordered cart_summary">
                  <thead>
                    <tr>
                      <th class="cart_product">Product</th>
                      <th>Description</th>
                      <th class="text-center">Unit price</th>
                      <th class="text-center">Qty</th>
                      <th class="text-center">Total</th> 
                      <th class="action"><i class="fa fa-trash-o"></i></th>
                    </tr>
                  </thead>
                  <tbody>
          @foreach($data['temp_orders'] as $temp_order) 
           <form method="post" action="{{ url('/') }}/update-cart"id="{{$temp_order->temp_order_row_id}}">
            {{ csrf_field() }}
               <tr>
                <td class="cart_product"><a href="#"><img src="{{ url('/public/uploads/products')}}/{{ $temp_order->product_image}}" alt="Product"></a></td>
                <td class="cart_description"><p class="product-name"><a href="#">{{ $temp_order->product_long_description }} </a><br/>
                  {{$temp_order->product_name}}
                </p>
                </td>
               
                <td class="price"><span>${{ $temp_order->product_price }}</span></td>
                <td class="qty">
                 <div style="border-radius: 0px" onClick="var result = document.getElementById('qty_{{$temp_order->temp_order_row_id}}'); var qty = result.value; if( !isNaN( qty )) result.value++;document.getElementById('{{$temp_order->temp_order_row_id}}').submit();" class="btn btn-info btn-sm btn-block"><i class="fa fa-plus">&nbsp;</i></div>
                      <input type="text" class="form-control" title="Qty" min="1" value="{{$temp_order->product_qty}}" maxlength="12" id="qty_{{$temp_order->temp_order_row_id}}" name="qty_textbox">
                    
                 <div style="border-radius: 0px" onClick="var result = document.getElementById('qty_{{$temp_order->temp_order_row_id}}'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) result.value--;document.getElementById('{{$temp_order->temp_order_row_id}}').submit();" class="btn btn-info btn-sm btn-block"><i class="fa fa-minus">&nbsp;</i></div>
                  <input type="hidden" name="temp_order_row_id" value="{{$temp_order->temp_order_row_id}}">
              
                </td>
                <td class="price"><span>${{ $temp_order->product_total_price}}</span></td>
                <td class="action"><a href="javascript:void(0)" temp_order_row_id="{{ $temp_order->temp_order_row_id }}" class="remove-item" /><i class="icon-close"></i></a></td>
                <input type="hidden" name="temp_order_row_id[]" value="{{ $temp_order->temp_order_row_id }}" /> 
              </tr>
            </form>
          @endforeach   
          <tr>
            <td colspan="4" class="text-right">
            <strong>Total :</strong>
            </td>
             <td class="text-right">  ${{$data['temp_orders']->sum('product_total_price')}}</td>
             <td></td>
          </tr>               
                  </tbody>
         <tfoot>
          <tr class="first last">
            <td colspan="50" class="a-right last">

           <a href="{{URL::to('/checkoutPage')}}"><button type="button" title="Continue Shopping" class="button btn-continue" href="{{ url('/')}}"><span>Checkout</span></button></a>
            <a href="{{URL::to('/')}}"><button type="button" title="Continue Shopping" class="button btn-continue" href="{{ url('/')}}"><span>Continue Shopping</span></button></a>
            <a href="javascript:void(0)" temp_order_row_id="{{ $temp_order->temp_order_row_id }}" id="remove-all" /> 
            <button type="button" class="button btn-info">Remove All</button> </a>
            </td>
          </tr>
        </tfoot>
                </table>
              </div>
              
            </div>
            @else
           <h2 class="text-center"> Cart is empty!</h2>
      @endif
    
    </div>
      </div>
  </div>
  
  <!-- Main Container End --> 
  
@include('../common/footer')
<!-- End Footer --> 

<!-- JS --> 

<!-- jquery js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/jquery.min.js"></script> 

<!-- bootstrap js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/bootstrap.min.js"></script> 

<!-- owl.carousel.min js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/owl.carousel.min.js"></script> 

<!-- bxslider js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/jquery.bxslider.js"></script> 

<!-- flexslider js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/jquery.flexslider.js"></script> 

<!-- megamenu js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/megamenu.js"></script> 
<script type="text/javascript">
  /* <![CDATA[ */   
  var mega_menu = '0';
  
  /* ]]> */
  </script> 

<!-- jquery.mobile-menu js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/mobile-menu.js"></script> 

<!--jquery-ui.min js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/jquery-ui.js"></script> 

<!-- main js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/main.js"></script> 

<!-- countdown js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/countdown.js"></script> 
<!--cloud-zoom js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/cloud-zoom.js"></script>

<script type="text/javascript"> 
$(document).ready(function() {
 $("#qty_textbox").change(function(){ 


          // var val=   document.getElementById("qty_textbox").value;
          // alert(val);

     $("#car_from").submit();



  });
 $('a.remove-item') . click( function() {
    var temp_order_row_id = $(this).attr('temp_order_row_id');
  if( !confirm('Are you sure to remove this item ? '))
  {
    return false;
  }
  
  var dataString = 'temp_order_row_id=' + temp_order_row_id;
    $.ajax({
        type: "POST",
    headers: {'X-CSRF-Token': $('meta[name=_token]').attr('content')},
        url : "{{url ('/') }}" + "/cartItemDelete",
        data : dataString,                    
        success : function(status) {    
        window.location.href = '{{url('/')}}/mycart';    
        }
    });
  
      
 });
 
  $('#remove-all') . click( function() {
  
  //var dataString = 'temp_order_row_id=' + temp_order_row_id;
  if( !confirm('Are you sure to remove all items from cart ? '))
  {
    return false;
  }
    $.ajax({
        type: "POST",
    headers: {'X-CSRF-Token': $('meta[name=_token]').attr('content')},
        url : "{{url ('/') }}" + "/cartItemDeleteAll",
        //data : dataString,                    
        success : function(status) {
        window.location.href = '{{url('/')}}/mycart';   
        }
    });
  
      
 });
 
 
 }); 
</script>


</body>
</html>


