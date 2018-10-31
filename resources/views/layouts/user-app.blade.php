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
  
  <!-- Breadcrumbs End --> 
  <!-- Main Container -->
  <div class="main-container col1-layout">
    <div class="container">
      <div class="row">
        <div class="col-main" style="min-height:150px">		
        <div class="panel panel info">
            <div class="panel panel-body">
                 <div class="container">
                     @yield('content')
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
  <!-- DataTables -->
<script src="{{asset('/public/adminLTE/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('/public/adminLTE/plugins/datatables/dataTables.bootstrap.min.js')}}"></script>
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