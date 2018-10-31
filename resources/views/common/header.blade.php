 <?php $categories = DB::table('categories')->get();?>
 <!-- Header -->
  <header>
    <div class="header-container">
      
      <div class="container">
        <div class="row">
          <div class="col-sm-4 col-md-3 col-xs-8"> 
            <!-- Header Logo -->
            <div class="logo"><a title="e-commerce" href="{{  url('/') }}"><img alt="e-commerce" src="{{ asset('/')}}public/images/logo.png"></a> </div>
            <!-- End Header Logo --> 
          </div>
          <div class="col-md-9 col-sm-8 col-xs-4">
            <div class="mtmegamenu">
              <ul class="hidden-xs">
                <li class="mt-root demo_custom_link_cms">
                  <div class="mt-root-item"><a href="{{  url('/') }}">
                    <div class="title title_font"><span class="title-text">Home</span></div>
                    </a></div>
                </li>
                <li class="mt-root">
                  <div class="mt-root-item"><a href="#">
                    <div class="title title_font"><span class="title-text">Store</span></div>
                    </a></div>
                  <ul class="menu-items col-xs-12">                   
           <li class="menu-item depth-1 menucol-1-3 ">
                      <div class="title title_font"> <a href="#"> Product Categories </a></div>
                      <ul class="submenu">
            <?php foreach($categories as $category) { ?>  
              <li class="menu-item">
                <div class="title"> <a href="<?php echo url('/') . '/category/' . $category->category_slug ?>"> <?php  echo $category->category_name; ?> </a></div>
              </li>
            <?php } ?>
                      </ul>
                    </li>
                   
                  </ul>
                </li>
                <li class="mt-root">
                  <div class="mt-root-item"><a href="{{  url('/') }}/contact-us">
                    <div class="title title_font"><span class="title-text">Contact Us</span> </div>
                    </a></div>
                </li>
                <li class="mt-root">
                  <div class="mt-root-item"><a href="{{  url('/') }}/about-us">
                    <div class="title title_font"><span class="title-text">about us</span></div>
                    </a></div>
                </li>
                 <li class="mt-root">
                  <div class="mt-root-item"><a href="{{  url('/') }}/mycart">
                    <div class="title title_font"><span class="title-text"> My Cart</span></div>
                    </a></div>
                </li>
                    <li class="mt-root">
                  <div class="mt-root-item"><a href="{{  url('/') }}/checkoutPage">
                    <div class="title title_font"><span class="title-text"> Checkout</span></div>
                    </a></div>
                </li>

                @if(Auth::check())
              
                @else
                <li class="mt-root">
                  <div class="mt-root-item"><a href="{{  route('login') }}">
                    <div class="title title_font"><span class="title-text"><i class="fa fa-lock"></i> Login</span></div>
                    </a></div>
                </li>
                @endif

                
              </ul>
              <!-- top cart -->
        <!--
              <div class="col-md-3 col-xs-9 col-sm-2 top-cart">
                <div class="top-cart-contain">
                  <div class="mini-cart">
                    <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#">
                      <div class="cart-icon"><i class="fa fa-shopping-cart"></i></div>
                      <div class="shoppingcart-inner hidden-xs hidden-sm"><span class="cart-title">Shopping Cart</span> <span class="cart-total">4 Item(s): $520.00</span></div>
                      </a></div>
                    <div>
                      <div class="top-cart-content">
                        <div class="block-subtitle hidden-xs">Recently added item(s)</div>
                        <ul id="cart-sidebar" class="mini-products-list">
                          <li class="item odd"> <a href="shopping_cart.html" title="Ipsums Dolors Untra" class="product-image"><img src="{{ asset('/')}}public/images/products/img01.jpg" alt="Lorem ipsum dolor" width="65"></a>
                            <div class="product-details"> <a href="#" title="Remove This Item" class="remove-cart"><i class="icon-close"></i></a>
                              <p class="product-name"><a href="shopping_cart.html">Lorem ipsum dolor sit amet Consectetur</a> </p>
                              <strong>1</strong> x <span class="price">$20.00</span> </div>
                          </li>
                          <li class="item even"> <a href="shopping_cart.html" title="Ipsums Dolors Untra" class="product-image"><img src="{{ asset('/')}}public/images/products/img01.jpg" alt="Lorem ipsum dolor" width="65"></a>
                            <div class="product-details"> <a href="#" title="Remove This Item" class="remove-cart"><i class="icon-close"></i></a>
                              <p class="product-name"><a href="shopping_cart.html">Consectetur utes anet adipisicing elit</a> </p>
                              <strong>1</strong> x <span class="price">$230.00</span> </div>
                          </li>
                          <li class="item last odd"> <a href="shopping_cart.html" title="Ipsums Dolors Untra" class="product-image"><img src="{{ asset('/')}}public/images/products/img01.jpg" alt="Lorem ipsum dolor" width="65"></a>
                            <div class="product-details"> <a href="#" title="Remove This Item" class="remove-cart"><i class="icon-close"></i></a>
                              <p class="product-name"><a href="shopping_cart.html">Sed do eiusmod tempor incidist</a> </p>
                              <strong>2</strong> x <span class="price">$420.00</span> </div>
                          </li>
                        </ul>
                        <div class="top-subtotal">Subtotal: <span class="price">$520.00</span></div>
                        <div class="actions">
                          <button class="btn-checkout" type="button"><i class="fa fa-check"></i><span>Checkout</span></button>
                          <button class="view-cart" type="button"><i class="fa fa-shopping-cart"></i> <span>View Cart</span></button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
        -->
      </div>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- end header --> 
  
  
  <!-- Navbar -->
  <nav>
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-4 col-xs-3">
          <div class="mm-toggle-wrap">
            <div class="mm-toggle"> <i class="fa fa-align-justify"></i> </div>
            <span class="mm-label hidden-xs">Categories</span> </div>
          <div class="mega-container visible-lg visible-md visible-sm">
            <div class="navleft-container">
              <div class="mega-menu-title">
                <h3>shop by category</h3>
              </div>
              <div class="mega-menu-category">
                <ul class="nav">
          <?php foreach($categories as $category) { ?>  
            <li class="nosub"> <a href="<?php echo url('/') . '/category/' . $category->category_slug ?>"><?php echo $category->category_name;  ?></a></li>
          <?php } ?>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xs-9 col-sm-6 col-md-6 hidden-xs"> 
          <!-- Search -->
          
          <div class="top-search" style="display:none;border:2px solid red">
            <div id="search">
              <form action="search" method="GET">
                <div class="input-group">
                  <input type="text" class="form-control" placeholder="Search" name="product_name">
                  <select class="cate-dropdown hidden-xs hidden-sm" name="category_row_id">
                    <option>All Categories</option>
          <?php foreach($categories as $category) { ?>  
            <option><?php echo $category->category_name;  ?></option>
          <?php } ?>
          </select>
          
                  <button class="btn-search" type="button"><i class="fa fa-search"></i></button>
          
                </div>
              </form>
            </div>
          </div>
          
          <!-- End Search --> 
        </div>
        <div class="call-us hidden-sm hidden-xs"> <i class="fa fa-phone"></i>
          <div class="call-us-inner"> <span class="call-text">Call us</span> <span class="call-num">+88-01971352290 </span> </div>
        </div>
         @if(Auth::check())
           <div class="call-us hidden-sm hidden-xs text-right">  
         <div class="btn-group">
  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
 <p class="fa fa-user" style="padding:0;margin:0;font-size: 20px"></p>  {{Auth::user()->name}}
  </button>
  <div class="dropdown-menu">
    <li>
       <a class="dropdown-item" href="{{route('my.account')}}"> My Profile</a>
    </li>
    <li class="divider"></li>
   <li>
       <a class="dropdown-item" href="{{route('my.orders')}}"> All Orders</a>
    </li>
      <li class="divider"></li>
    <li>
    <li>
       <a class="dropdown-item" href="{{route('my.pending.order')}}">Pending Orders</a>
    </li>
    <li class="divider"></li>
     <li>
       <a class="dropdown-item" href="{{route('my.wishlist')}}"> Wishlist</a>
    </li>
    <li class="divider"></li>
   <!--  <li>
       <a class="dropdown-item" href="{{route('update.profile')}}">Update Profile</a>
    </li>
      <li class="divider"></li> -->
           <li>
       <a  href="{{route('passwords.reset')}}">Change Password</a>
    </li>
      <li class="divider"></li>
 
    <li>
       <a class="dropdown-item" href="{{route('user.logout')}}">Log Out</a>
    </li>
  <li class="divider"></li>
  </div>
</div>
        </div>
    @endif
      </div>
    </div>
  </nav>
  <!-- end nav --> 