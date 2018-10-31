<!DOCTYPE HTML>
<html>
<head>
<title>Rupahali new website | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="http://localhost/rupahali/public/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="http://localhost/rupahali/public/css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="http://localhost/rupahali/public/js/jquery1.min.js"></script>
<!-- start menu -->
<link href="http://localhost/rupahali/public/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="http://localhost/rupahali/public/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!--start slider -->
    <link rel="stylesheet" href="{{url('/')}}/public/css/fwslider.css" media="all">
    <script src="http://localhost/rupahali/public/js/jquery-ui.min.js"></script>
    <script src="http://localhost/rupahali/public/js/css3-mediaqueries.js"></script>
    <script src="http://localhost/rupahali/public/js/fwslider.js"></script>
<!--end slider -->
<script src="http://localhost/rupahali/public/js/jquery.easydropdown.js"></script>
</head>

<body>
@include('common.header')

 <div class="main">
	<div class="wrap">
		<div class="section group">
			@yield('content')
			<div class="clear"></div>
		</div>
	</div>
</div>
	
@include('common.footer')
</body>
</html>
