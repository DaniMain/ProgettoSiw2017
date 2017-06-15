<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

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
<link
	href="http://getbootstrap.com/assets/css/ie10-viewport-bug-workaround.css"
	rel="stylesheet">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script
	src="http://getbootstrap.com/assets/js/ie-emulation-modes-warning.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:getAsString name="title" /></title>
<!-- Custom styles for this template
<link href="http://getbootstrap.com/examples/cover/cover.css"
	rel="stylesheet">  -->
</head>

<body>

	<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras"
		prefix="tilesx"%>
	<tilesx:useAttribute name="current" />

	<div class="navbar-wrapper">
		<div class="container">

			<nav
				class="navbar navbar-inverse navbar-static-top navbar-default navbar-fixed-top">
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
						<ul class="nav navbar-nav">
							<li class="${current == 'index' ? 'active' : ''}"><a
								href='<spring:url value="/" />'>Home</a></li>

							<security:authorize access="hasRole('ROLE_ADMIN')">
								<li class="${current == 'users' ? 'active' : ''}"><a
									href='<spring:url value="/users.html"/>'>Utenti</a></li>
							</security:authorize>

							<security:authorize access="isAuthenticated()">
								<li><a href="#account.html">Il mio account</a></li>
							</security:authorize>

							<security:authorize access="isAuthenticated()">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-haspopup="true"
									aria-expanded="false">Naviga per<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="#">Autore dell'opera</a></li>
										<li><a href="#">Anno di realizzazione</a></li>
										<li><a href="#">Tecnica</a></li>
									</ul></li>
							</security:authorize>
						</ul>
						<ul class="nav navbar-nav navbar-right navbar-default">
							<security:authorize access="! isAuthenticated()">
								<li class="${current == 'register' ? 'active' : ''}"><a
									href='<spring:url value="/login.html"/>'>Login</a></li>
							</security:authorize>

							<security:authorize access="!isAuthenticated()">
								<li class="${current == 'register' ? 'active' : ''}"><a
									href="#">Registrati</a></li>
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

	<div class="container">
		<div class="inner cover">
			<tiles:insertAttribute name="body" />
		</div>
	</div>

	<br>
	<br>

	<tiles:insertAttribute name="footer" />

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
	<!-- Just to make our placeholder images work. Don't actually copy the next line! -->
	<script src="http://getbootstrap.com/assets/js/vendor/holder.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script
		src="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>
	<script
		type="http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
