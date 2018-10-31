<!-- mobile menu -->
<?php $categories = DB::table('categories')->get();?>
<div id="mobile-menu">
  <div id="mobile-search">
    <form>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <button class="btn-search" type="button"><i class="fa fa-search"></i></button>
      </div>
    </form>
  </div>
  <ul>
    <li><a href="{{ url('/') }}">Home</a></li>
	<li><a href="#" class="home1">Store</a>
      <ul>
		<?php 
		foreach($categories as $category) 
		{ 
		?>	
			<li class="menu-item">
				<div class="title"> <a href="<?php echo url('/') . '/category/' . $category->category_slug ?>"> <?php  echo $category->category_name; ?> </a></div>
			</li>
		<?php 
		} 
		?>
       
      </ul>
    </li>
   
    <li><a href="{{ url('/') }}/contact-us">Contact us</a></li>
    <li><a href="{{ url('/') }}/about-us">About us</a></li>
    </ul>
</div>
<!-- end mobile menu -->