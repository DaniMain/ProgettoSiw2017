<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<h1>${autore.nome } ${autore.cognome }</h1>

<br>
<br>

<c:if test="${param.success eq true}">
	<div class="alert alert-danger">
		<center>Opera rimossa</center>
	</div>
	<br>
	<br>
</c:if>

<script type="text/javascript">
	$(document).ready(function() {
		$('.nav a:first').tab('show');
	});
</script>

<div>

	<!-- Nav tabs -->
	<ul class="nav nav-tabs" role="tablist">
		<li role="presentation" class="active"><a href="#home"
			aria-controls="home" role="tab" data-toggle="tab">Dettagli autore</a></li>
		<li><a href="#opere" aria-controls="profile" role="tab"
			data-toggle="tab">Opere relizzate</a></li>
	</ul>

	<!-- Tab panes -->
	<div class="tab-content">
		<div role="tabpanel" class="tab-pane active" id="home">

			<br>

			<table class="table-condensed">
				<tbody>
					<tr>
						<td>Nome:</td>
						<td>${autore.nome}</td>
						<!-- non chiedeteci perché hahah lol(lo) -->
					</tr>
					<tr>
						<td>Cognome:</td>
						<td>${autore.cognome}</td>
					</tr>
					<tr>
						<td>Nazionalità:</td>
						<td>${autore.nazione}</td>
					</tr>
					<tr>
						<td>Data di nascita:</td>
						<td>${autore.dataNascita}</td>
					</tr>
					<tr>
						<td>Data di morte:</td>
						<td>${autore.dataMorte}</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div role="tabpanel" class="tab-pane active" id="opere">

			<br>

			<table	class="table-hover table-striped table-condensed" >
				<c:forEach items="${autore.opere}" var="opera">
					<tr>
						<td align="center" width="128">
							<a href='<spring:url value="/autoriOpera/Opera/${opera.id }.html" />'>
								<img src="${opera.url }" alt="${opera.titolo}" height="64"/>
							</a>
						</td>
						<td ><a
							href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'>
								${opera.titolo} </a>
						</td>
						<security:authorize access="hasRole('ROLE_ADMIN')">
							<td align="right">
								<a href='<spring:url value="/autoriOpera/Opera/cancella/${opera.id}-${autore.id }.html" />'>
									<input type="submit" value="Rimuovi opera"
										class="btn btn-danger btn-primary" />
								</a>
							</td>
						</security:authorize>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>

</div>

<br>
<security:authorize access="hasRole('ROLE_ADMIN')">
	<a href='<spring:url value="/autoriOpera/cancella/${autore.id }.html" />'>
		<input type="submit" value="Rimuovi autore" class="btn btn-danger btn-primary" />
	</a>
</security:authorize>