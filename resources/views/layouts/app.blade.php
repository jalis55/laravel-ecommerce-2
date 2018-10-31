<!DOCTYPE html>
<html lang="en">
@include('../common/head')
</head>


@yield('body_tag')

@include('../common/mobile-menu')
<div id="page">   
  @include('../common/header')  
  @yield('content')  
  @include('../common/footer')
 </div>
 
<!-- JS --> 
  
<!-- jquery js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/jquery.min.js"></script> 

<!-- bootstrap js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/bootstrap.min.js"></script> 

<!-- Slider Js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/revolution-slider.js"></script> 

<!-- owl.carousel.min js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/owl.carousel.min.js"></script> 

<!-- bxslider js --> 
<script type="text/javascript" src="{{ asset('/')}}public/js/jquery.bxslider.js"></script> 

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

<!--checkout-css-->
<link rel="stylesheet" href="{{ asset('/')}}public/css/style.css">

<!-- Revolution slider --> 
<script type="text/javascript">
			var setREVStartSize=function(){};
						
				
			setREVStartSize();
			function revslider_showDoubleJqueryError(sliderID) {}
			var tpj=jQuery;
			tpj.noConflict();
			var revapi6;
			tpj(document).ready(function() {
				if(tpj("#rev_slider_6_1").revolution == undefined){
					revslider_showDoubleJqueryError("#rev_slider_6_1");
				}else{
					revapi6 = tpj("#rev_slider_6_1").show().revolution({
						sliderType:"standard",
						sliderLayout:"auto",
						dottedOverlay:"none",
						delay:6000,
						navigation: {
							keyboardNavigation:"off",
							keyboard_direction: "horizontal",
							mouseScrollNavigation:"off",
							onHoverStop:"off",
							touch:{
								touchenabled:"on",
								swipe_threshold: 0.7,
								swipe_min_touches: 1,
								swipe_direction: "horizontal",
								drag_block_vertical: false
							}
							,
							arrows: {
								style:"hades",
								enable:true,
								hide_onmobile:false,
								hide_onleave:true,
								hide_delay:200,
								hide_delay_mobile:1200,
								tmp:'<div class="tp-arr-allwrapper">	<div class="tp-arr-imgholder"></div></div>',
								left: {
									h_align:"left",
									v_align:"center",
									h_offset:20,
									v_offset:0
								},
								right: {
									h_align:"right",
									v_align:"center",
									h_offset:20,
									v_offset:0
								}
							}
							,
							bullets: {
								enable:true,
								hide_onmobile:false,
								style:"hades",
								hide_onleave:true,
								hide_delay:200,
								hide_delay_mobile:1200,
								direction:"horizontal",
								h_align:"center",
								v_align:"bottom",
								h_offset:0,
								v_offset:20,
								space:5,
								tmp:'<span class="tp-bullet-image"></span>'
							}
						},
						gridwidth:1920,
						gridheight:650,
						lazyType:"none",
						shadow:0,
						spinner:"spinner0",
						stopLoop:"off",
						stopAfterLoops:-1,
						stopAtSlide:-1,
						shuffle:"off",
						autoHeight:"on",
						disableProgressBar:"on",
						hideThumbsOnMobile:"off",
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						startWithSlide:0,
						debugMode:false,
						fallbacks: {
							simplifyAll:"off",
							nextSlideOnWindowFocus:"off",
							disableFocusListener:false,
						}
					});
				}
			});	/*ready*/
		</script>
</body>
</html>

  
