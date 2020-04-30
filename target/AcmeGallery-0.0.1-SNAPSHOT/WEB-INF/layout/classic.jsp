<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>

<head>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

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
<script	type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>

</head>

<body>

	<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx"%>
	<tilesx:useAttribute name="current" />

	<!-- <div class="navbar-wrapper"> -->
	<div class="container">
		
		<!-- <nav class="navbar navbar-expand-lg navbar-inverse navbar-static-top navbar-default navbar-fixed-top"> -->
		<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
		
			<!-- <div class="container-fluid">
			
				<div class="navbar-header">  -->
					<a class="navbar-brand" href="<spring:url value="/"/>">AcmeGallery</a>
					<!-- 
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
						aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button> -->
					 <button class="navbar-toggler" type="button" data-toggle="collapse"
					 	data-target=".navbar-collapse" aria-controls="navbarSupportedContent"
					 	aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					 </button>
				<!-- </div> -->
				
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="navbar-nav mr-auto">
						<!-- <li class="${current == 'index' ? 'active' : ''}"><a
							href='<spring:url value="/" />'>Home</a></li> -->

						<security:authorize access="isAuthenticated()">
							<li class="nav-item ${current == 'user-detail' ? 'active' : ''}">
								<a class="nav-link" href='<spring:url value="/account.html"/>'>Il mio account</a>
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
							<li class="nav-item ${current == 'users' ? 'active' : ''}">
								<a class="nav-link" href='<spring:url value="/users.html"/>'>Utenti</a>
							</li>
						</security:authorize>
						
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<li class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">
										Carica
								</a>
								<ul class="dropdown-menu">
									<li class="${current == 'load-opera' ? 'active' : ''}">
										<a class="dropdown-item" href='<spring:url value="/caricaOpera.html"/>'>Opera</a>
									</li>
									<li class="${current == 'load-author' ? 'active' : ''}">
										<a class="dropdown-item" href='<spring:url value="/caricaAutore.html"/>'>Autore</a>
									</li>
								</ul></li>
						</security:authorize>
					</ul>
					
					<ul class="navbar-nav navbar-right">
						<security:authorize access="! isAuthenticated()">
							<li class="nav-item ${current == 'login' ? 'active' : ''}">
								<a class="nav-link" href='<spring:url value="/login.html"/>'>Login</a>
							</li>
						</security:authorize>

						<security:authorize access="!isAuthenticated()">
							<li class="nav-item ${current == 'register' ? 'active' : ''}">
								<a class="nav-link" href='<spring:url value="/register.html"/>'>Registrati</a>
							</li>
						</security:authorize>

						<security:authorize access="isAuthenticated()">
							<li class="nav-item">
								<a class="nav-link" href='<spring:url value="/logout"/>'>Logout</a>
							</li>
						</security:authorize>
					</ul>
				</div>
			<!-- </div> -->
		</nav>
	</div>
	<!-- </div> -->

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
