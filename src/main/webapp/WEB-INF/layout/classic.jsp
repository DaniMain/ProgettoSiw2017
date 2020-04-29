<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>

<head>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<!-- BOOTSTRAP UPDATE -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous">
</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous">
</script>



<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<!-- href="http://getbootstrap.com/assets/css/ie10-viewport-bug-workaround.css" -->
<link
	href="https://maxcdn.bootstrapcdn.com/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> -->	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>


<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<!-- 
<script
	src="http://getbootstrap.com/assets/js/ie-emulation-modes-warning.js"></script> -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
<!-- Custom styles for this template
<link href="http://getbootstrap.com/examples/cover/cover.css"
	rel="stylesheet">  -->
	
<!-- Per non creare problemi con la caruosel e la navbar si adotta questo template -->
<link href="http://getbootstrap.com/examples/carousel/carousel.css"
	rel="stylesheet">
<!-- <link rel="stylesheet" href="../templated-introspect/assets/css/font-awesome.min.css" type="text/css"> -->
</head>

<body>

	<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>
	<tilesx:useAttribute name="current" />

	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-expand-lg navbar-inverse navbar-static-top navbar-default navbar-fixed-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<div class="navbar-brand">AcmeGallery</div>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav mr-auto">
							<li class="${current == 'index' ? 'active' : ''}"><a
								href='<spring:url value="/" />'>Home</a></li>

							<security:authorize access="isAuthenticated()">
								<li class="${current == 'user-detail' ? 'active' : ''}">
									<a href='<spring:url value="/account.html"/>'>Il mio account</a>
								</li>
							</security:authorize>

							<security:authorize access="isAuthenticated()">
								<li class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle" id="navbarDropdown"
										data-toggle="dropdown" role="button" aria-haspopup="true"
										aria-expanded="false">
											Naviga per
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item ${current == 'brows-author' ? 'active' : ''}"
  											href='<spring:url value="/autoriOpera.html"/>'>Autore dell'opera</a>
										<a class="dropdown-item ${current == 'brows-anno' ? 'active' : ''}"
											href='<spring:url value="/anniOpere.html"/>'>Anno di realizzazione</a>
										<a class="dropdown-item ${current == 'brows-tecnica' ? 'active' : ''}"
											href='<spring:url value="/tecnicaOpere.html"/>'>Tecnica</a>
										<a class="dropdown-item ${current == 'search' ? 'active' : ''}"
											href='<spring:url value="/cerca.html"/>'>Cerca</a>
									</div>
								</li>
							</security:authorize>
							
							<security:authorize access="hasRole('ROLE_ADMIN')">
								<li class="${current == 'users' ? 'active' : ''}"><a
									href='<spring:url value="/users.html"/>'>Utenti</a></li>
							</security:authorize>
							
							<security:authorize access="hasRole('ROLE_ADMIN')">
								<li class="dropdown">
									<a href="#" class="dropdown-toggle"
										data-toggle="dropdown" role="button" aria-haspopup="true"
										aria-expanded="false">
											Carica
									</a>
									<ul class="dropdown-menu">
										<li class="${current == 'load-opera' ? 'active' : ''}"><a
											href='<spring:url value="/caricaOpera.html"/>'>Opera</a></li>
										<li class="${current == 'load-author' ? 'active' : ''}"><a
											href='<spring:url value="/caricaAutore.html"/>'>Autore</a></li>
									</ul></li>
							</security:authorize>
						</ul>
						
						<ul class="nav navbar-nav navbar-right">
							<security:authorize access="! isAuthenticated()">
								<li class="${current == 'login' ? 'active' : ''}"><a
									href='<spring:url value="/login.html"/>'>Login</a></li>
							</security:authorize>

							<security:authorize access="!isAuthenticated()">
								<li class="${current == 'register' ? 'active' : ''}"><a
									href='<spring:url value="/register.html"/>'>Registrati</a></li>
							</security:authorize>

							<security:authorize access="isAuthenticated()">
								<li><a href='<spring:url value="/logout"/>'>Logout</a></li>
							</security:authorize>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>

	<br>
	<br>
	<br>
	<br>

	<div class="container">
		<div class="inner cover">
			<tiles:insertAttribute name="body" />
		</div>
	</div>

	<br>

	<tiles:insertAttribute name="footer" />

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster 
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line!
	<script src="http://getbootstrap.com/assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug 
	<script
		src="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>
	<script
		type="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script> -->

</body>
</html>
