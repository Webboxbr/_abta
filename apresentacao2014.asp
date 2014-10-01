<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="author" content="Webbox">
	<meta name="description" content="A Feira e Congresso ABTA reúne os principais operadores de TV por Assinatura e banda larga do Brasil, produtores, programadores de conteúdo e outros." />
	<meta name="keywords" content="Feira ABTA Congresso ABTA, feira TV assinatura, feira TV cabo, congresso TV assinatura, congresso TV cabo, congresso banda larga, congresso tecnologia, feira tecnologia, operadores TV assinatura, operadores TV cabo" />

	<title>ABTA 2014 | Associação Brasileira de Televisão por Assinatura</title>

	<!-- Fav and touch icons -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
	<link rel="shortcut icon" href="assets/ico/favicon.png">



<!--<link rel="stylesheet" href="moduloLightBox/css/screen.css" type="text/css" media="screen" /> -->
    <link rel="stylesheet" href="moduloLightBox/css/lightbox.css" type="text/css" media="screen" />

<script src="moduloBanner/jquery.js" type="text/javascript"></script>
<script src="moduloCarouselGaleriaFeiras/jsCarousel.js" type="text/javascript"></script>
<link href="moduloCarouselGaleriaFeiras/jsCarousel.css" rel="stylesheet" type="text/css" />




<link rel="stylesheet" href="assets_feiras/css/flexslider.css" type="text/css" media="screen" />


<script type="text/javascript">
	$(document).ready(function() {
		$('#jsCarousel').jsCarousel({ onthumbnailclick: function(src) { /*alert(src);*/ }, autoscroll: true });
	});
</script>


<link href="moduloPiroBox/css_pirobox/style_2/style.css" rel="stylesheet" type="text/css" />
<!--<link rel="stylesheet" type="text/css" href="css/css.css"/>
 --><link rel="stylesheet" type="text/css" href="moduloPiroBox/content/css/default.css"/>
<link rel="stylesheet" type="text/css" href="moduloPiroBox/css/sansation/stylesheet.css"/>
<!--<script type="text/javascript" src="js/jquery.min.js"></script>
 --><script type="text/javascript" src="moduloPiroBox/js/jquery-ui-1.8.2.custom.min.js"></script>
<script type="text/javascript" src="moduloPiroBox/js/pirobox_extended.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$().piroBox_ext({
		piro_speed : 700,
		bg_alpha : 0.5,
		piro_scroll : true // pirobox always positioned at the center of the page
	});
});
</script>


<script>
  jQuery(document).ready(function($) {
      $('a').smoothScroll({
        speed: 1000,
        easing: 'easeInOutCubic'
      });

      $('.showOlderChanges').on('click', function(e){
        $('.changelog .old').slideDown('slow');
        $(this).fadeOut();
        e.preventDefault();
      })
  });
</script>

<style>
img { border:0px}
#wrapper {margin-top: 6px;}
</style>

</head>
<body>
	
		<!--#include file="_includes/header.asp" -->

		<section id="conteudo">
			<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<ol class="breadcrumb">
						<li><a href="#">ABTA</a></li>
						<li class="active">Apresentação 2014</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<h1>Feira e congresso ABTA 2014</h1>
					<p>Apresentação de Oscar Vicente Simões de Oliveira, Presidente executivo da ABTA.</p>
				</div>
			</div>

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12">
					<video controls id="bgvid-int" poster="images/img_vid2.jpg">
						<source src="video/abta.webm" type="video/webm">
						<source src="video/abta.mp4" type="video/mp4">
						<source src="video/abta.ogv" type="video/ogg">
					</video>
				</div>

	
			</div>
			
			



			<div style="height:40px"></div>				

				
			</div>
			
		</section> <!-- conteudo /-->

		<!--#include file="_includes/footer.asp" -->
	

	<!--<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>/-->
	<script src="assets/js/bootstrap.js"></script>
	<script defer src="assets_feiras/js/jquery.flexslider.js"></script>


<script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('#carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        itemWidth: 210,
        itemMargin: 5,
        asNavFor: '#slider'
      });

      $('#slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        sync: "#carousel",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>


  <!-- Syntax Highlighter -->
  <script type="text/javascript" src="assets_feiras/js/shCore.js"></script>
  <script type="text/javascript" src="assets_feiras/js/shBrushXml.js"></script>
  <script type="text/javascript" src="assets_feiras/js/shBrushJScript.js"></script>

  <!-- Optional FlexSlider Additions -->
  <script src="assets_feiras/js/jquery.easing.js"></script>
  <script src="assets_feiras/js/jquery.mousewheel.js"></script>
  <script defer src="assets_feiras/js/demo.js"></script>
	


	<!-- Fonts /-->
	<script type="text/javascript">
	WebFontConfig = {
	google: { families: [ 'Exo:400,700:latin' ] }
	};
	(function() {
	var wf = document.createElement('script');
	wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
	'://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
	wf.type = 'text/javascript';
	wf.async = 'true';
	var s = document.getElementsByTagName('script')[0];
	s.parentNode.insertBefore(wf, s);
	})(); </script>

	<!-- busca /-->
	<script>
	  (function() {
	    var cx = '003686586408860510253:yecgopcebjc';
	    var gcse = document.createElement('script'); gcse.type = 'text/javascript'; gcse.async = true;
	    gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
	        '//www.google.com/cse/cse.js?cx=' + cx;
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(gcse, s);
	  })();
	</script>


</body>
</html>