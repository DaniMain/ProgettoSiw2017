<%@page import="org.springframework.web.bind.annotation.ModelAttribute"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<h1><c:out value="${autore.nome} ${autore.cognome}"/></h1>

<br>
<br>

<c:if test="${param.success eq true}">
	<div class="alert alert-danger" style="text-align: center;">Opera rimossa</div>
	<br>
	<br>
</c:if>

<script type="text/javascript">
	$(document).ready(function() {
		$('.nav-tabs a:first').tab('show'); //mostra il primo tab
	});
</script>

<!-- Nav tabs -->
<ul class="nav nav-tabs">
	<li class="nav-item">
		<a href="#home" class="nav-link active" data-toggle="tab">Dettagli autore</a>
	</li>
	<li class="nav-item">
		<a href="#opere" class="nav-link" data-toggle="tab"><c:out value="Opere relizzate (${autore.opere.size()})"/></a>
	</li>
</ul>

<!-- Tab panes -->
<div class="tab-content">
	<div class="tab-pane active" id="home">

		<br>

		<table class="table-condensed">
			<tbody>
				<tr>
					<td>Nome:</td>
					<td><c:out value="${autore.nome}"/></td>
					<!-- non chiedeteci perché hahah lol(lo) -->
				</tr>
				<tr>
					<td>Cognome:</td>
					<td><c:out value="${autore.cognome}"/></td>
				</tr>
				<tr>
					<td>Nazionalità:</td>
					<td><c:out value="${autore.nazione}"/></td>
				</tr>
				<tr>
					<td>Data di nascita:</td>
					<td><c:out value="${autore.dataNascita}"/></td>
				</tr>
				<tr>
					<td>Data di morte:</td>
					<td><c:out value="${autore.dataMorte}"/></td>
				</tr>
			</tbody>
		</table>
	</div>

	<div class="tab-pane" id="opere">

		<br>
	
		<c:if test="${autore.opere.isEmpty()}">
			Al momento non ci sono opere di questo autore
		</c:if>

		<table	class="table-hover table-striped table-condensed" >
			<c:forEach items="${autore.opere}" var="opera">
				<tr>
					<td align="center" width="128">
						<a href='<spring:url value="/autoriOpera/Opera/${opera.id }.html" />'>
							<img src="${opera.url }" alt="${opera.titolo}" height="100" style="max-width: 512px;"/>
						</a>
					</td>
					<td>
						<a href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'><c:out value="${opera.titolo}"/></a>
					</td>
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<td align="right">
							<a href='<spring:url value="/autoriOpera/Opera/cancella/${opera.id}-${autore.id }.html" />'>
								<input type="submit" value="Rimuovi opera" class="btn btn-danger btn-primary" />
							</a>
						</td>
					</security:authorize>
				</tr>
			</c:forEach>
		</table>
	</div>

</div>

<br>

<security:authorize access="hasRole('ROLE_ADMIN')">
	<a href='<spring:url value="/autoriOpera/cancella/${autore.id }.html" />'>
		<input type="submit" value="Rimuovi autore" class="btn btn-danger btn-primary" />
	</a>
</security:authorize>