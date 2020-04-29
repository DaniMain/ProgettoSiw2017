<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="http://getbootstrap.com/assets/js/ie-emulation-modes-warning.js"></script>

</head>
<body style="background-color:grey">

	<!-- <center>
		<h1 style="color:white">La migliore galleria di arte moderna</h1>
	</center> -->
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active" style="height: 460px;">
				<img class="first-slide d-block w-100"
					src="http://www.scudit.net/mdleonardo_file/cenacolo100.jpg">
				<div class="container">
					<div class="carousel-caption d-none d-md-block">
						<h1>Le opere più belle</h1>
						<p>Vieni a visitare il nostro sito per vedere le migliori
							opere di arte moderna e non solo</p>
					</div>
				</div>
			</div>
			<div class="carousel-item" style="height: 460px;">
				<img class="second-slide d-block w-100"
					src="https://aforismi.meglio.it/img/frasi/quadri.jpg">
				<div class="container">
					<div class="carousel-caption d-none d-md-block">
						<h1>Gli artisti più famosi</h1>
						<p>Le opere inserite sono dei migliori maestri che hanno fatto
							la storia</p>
					</div>
				</div>
			</div>
			<div class="carousel-item" style="height: 460px;">
				<img class="third-slide d-block w-100"
					src="https://www.theartpostblog.com/wp-content/uploads/2016/05/monet-impressione-levar-del-sole.jpg">
				<div class="container">
					<div class="carousel-caption d-none d-md-block">
						<h1>Iscriviti gratis</h1>
						<p>Il nostro sito è completamente gratuito! Cosa aspetti?</p>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
	<!-- <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script> -->
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="http://getbootstrap.com/assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>