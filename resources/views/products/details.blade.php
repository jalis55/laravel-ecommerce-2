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
            <li><strong>Product Details</strong></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End --> 
  <!-- Main Container -->
  <div class="main-container col1-layout">
    <div class="container">
      <div class="row">
        <div class="col-main">
          <div class="product-view-area">
            <div class="product-big-image col-xs-12 col-sm-5 col-lg-5 col-md-5">
             
              <div class="large-image"> <a href="{{ asset('/')}}public/uploads/products/{{ $data['single_info']->product_image }}" class="cloud-zoom" id="zoom1" rel="useWrapper: false, adjustY:0, adjustX:20"> <img class="zoom-img" src="{{ asset('/')}}public/uploads/products/{{ $data['single_info']->product_image }}" alt="products"> </a> </div>
              
              
              <!-- end: more-images --> 
              
            </div>
            <div class="col-xs-12 col-sm-7 col-lg-7 col-md-7 product-details-area">
              <div class="product-name">
                <h1>{{ $data['single_info']->product_name }}</h1>
              </div>
              <div class="price-box">
                <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> {{ $data['single_info']->product_price }} Tk</span> </p>                
              </div>
              <div class="ratings">              
			     <div> &nbsp;</div>
                <p class="availability in-stock pull-right"><br />Availability: <span>In Stock</span></p>
              </div>
              <div class="short-description">
                <h4>Quick Overview</h4>
				     {{ $data['single_info']->product_long_description }}
               
              </div>
			  <!--
              <div class="product-color-size-area">
                <div class="color-area">
                  <h2 class="saider-bar-title">Color</h2>
                  <div class="color">
                    <ul>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                      <li><a href="#"></a></li>
                    </ul>
                  </div>
                </div>
                <div class="size-area">
                  <h2 class="saider-bar-title">Size</h2>
                  <div class="size">
                    <ul>
                      <li><a href="#">S</a></li>
                      <li><a href="#">L</a></li>
                      <li><a href="#">M</a></li>
                      <li><a href="#">XL</a></li>
                      <li><a href="#">XXL</a></li>
                    </ul>
                  </div>
                </div>
              </div>
			  -->
              <div class="product-variation">
                <form action="{{url('/')}}/add-to-cart" method="post">
                   {{ csrf_field() }}
                  <div class="cart-plus-minus">
                     <input type="hidden" name="product_row_id" value="{{ $data['single_info']->product_row_id}}"/>
                    <label for="qty">Quantity:</label>
                    <div class="numbers-row">
                      <div onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;" class="dec qtybutton"><i class="fa fa-minus">&nbsp;</i></div>
                      <input type="text" class="qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
                      <div onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="inc qtybutton"><i class="fa fa-plus">&nbsp;</i></div>
                    </div>
                  </div>
                  <button class="button pro-add-to-cart" title="Add to Cart" type="submit"><span><i class="fa fa-shopping-cart"></i> Add to Cart</span></button>
                </form>
              </div>
			 
              <div class="product-cart-option">
                <ul>
                  <li><a href="{{URL::to('/add-to-wishlist/')}}/{{ $data['single_info']->product_row_id}}"><i class="fa fa-heart" style="color:red;"></i><span>Add to Wishlist</span></a></li>
                  <li><a href="#"><i class="fa fa-retweet"></i><span>Add to Compare</span></a></li>
                  <li><a href="#"><i class="fa fa-envelope"></i><span>Email to a Friend</span></a></li>
                </ul>
              </div>
             <div class="product-cart-option">
               <label>
                      PRODUCT REVIEW 
                    </label>
                    <br>
                     @if ($message = Session::get('rating'))
           <div class="alert alert-success" role="alert">
            {{ Session::get('rating') }}
          </div>
            @endif
                   <a href="{{URL::to('/give-rating/')}}/{{ $data['single_info']->product_row_id}}/1"><i class="fa fa-star" @if($data['rating'] >=1) style="font-size:20px;color: orange;" @else style="font-size:20px;color:gray"  @endif></i></a> 
                   <a href="{{URL::to('/give-rating/')}}/{{ $data['single_info']->product_row_id}}/2"><i class="fa fa-star" @if($data['rating'] >=2) style="font-size:20px;color: orange;" @else style="font-size:20px;color:gray"  @endif></i></a> 
                   <a href="{{URL::to('/give-rating/')}}/{{ $data['single_info']->product_row_id}}/3"><i class="fa fa-star" @if($data['rating'] >=3) style="font-size:20px;color: orange;" @else style="font-size:20px;color:gray"  @endif></i></a> 
                   <a href="{{URL::to('/give-rating/')}}/{{ $data['single_info']->product_row_id}}/4"><i class="fa fa-star" @if($data['rating'] >=4) style="font-size:20px;color: orange;" @else style="font-size:20px;color:gray"  @endif></i></a> 
                   <a href="{{URL::to('/give-rating/')}}/{{ $data['single_info']->product_row_id}}/5"><i class="fa fa-star" @if($data['rating'] >4) style="font-size:20px;color: orange;" @else style="font-size:20px;color:gray"  @endif></i></a> 
              </div>
			
			</div>
          </div>
        </div>
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

</body>
</html>