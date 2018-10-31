 
  <footer> 
    
    <div class="container">
      <div class="row" style="padding-top:20px">
	  <?php $categories = DB::table('categories')->get();?>
        <div class="col-sm-12 col-md-6 col-xs-12 collapsed-block">
          <div class="footer-links">
            <h3 class="links-title">Information<a class="expander visible-xs" href="#TabBlock-1">+</a></h3>
            <div class="tabBlock" id="TabBlock-1">
              <ul class="list-links list-unstyled">
					<?php 
					foreach($categories as $category) 
					{ ?>	
						<li> <a href="<?php echo url('/') . '/category/' . $category->category_slug ?>"><?php echo $category->category_name;  ?></a></li>
						<?php 
					} 
					?>
              </ul>
            </div>
          </div>
        </div>
      
   
        <div class="col-sm-12 col-md-6 col-xs-12 col-lg-6">
          <h3 class="links-title">Contact us</h3>
		  
		  	<div class="footer-content"> 
				<div class="email">
					<i class="fa fa-envelope"></i>
					<p>rrr.rupahalinew@yahoo.com, rrr.rupahalinew@gmail.com</p>
				</div>
				<div class="phone"> 			  
					<i class="fa fa-phone"></i><p>88-02-9650817, 88-01971352290</p>
				</div>
				
				<div class="address">
				<i class="fa fa-map-marker"></i>
				<p>Shop-223, Shimanto Square (Rifles Square), Peelkhana, Dhanmondi-2, Dhaka-1205.</p>
				</div>
				
				<div style="padding:2px 0 2px 8px">
				<i class="fa fa-facebook"></i>
				<p><a href="http://www.facebook.com/rupahalinew" target="_blank">http://www.facebook.com/rupahalinew</a></p>
				</div>
				
				
			</div>
		  
		 
        </div>
       
      </div>
    </div>
    <div class="footer-coppyright">
      <div class="container">
        <div class="row">
          <div class="col-sm-6 col-xs-12 coppyright"> Copyright © 2017 <a href="#"> Rupahali </a>. All Rights Reserved. </div>
          <div class="col-sm-6 col-xs-12">
		  <!--
            <div class="payment">
              <ul>
                <li><a href="#"><img title="Visa" alt="Visa" src="{{ asset('/')}}public/images/visa.png"></a></li>
                <li><a href="#"><img title="Paypal" alt="Paypal" src="{{ asset('/')}}public/images/paypal.png"></a></li>
                <li><a href="#"><img title="Discover" alt="Discover" src="{{ asset('/')}}public/images/discover.png"></a></li>
                <li><a href="#"><img title="Master Card" alt="Master Card" src="{{ asset('/')}}public/images/master-card.png"></a></li>
              </ul>
            </div>
			-->
          </div>
        </div>
      </div>
    </div>
  </footer>
  <a href="#" class="totop"><i class="fa fa-arrow-up"></i></a> 
  <!-- End Footer --> 
  