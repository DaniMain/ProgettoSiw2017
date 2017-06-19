<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Risultati ricerca</h1>
</center>

<br>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>Risultati in opere</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${opere}" var="opera">
			<tr>
				<td><a href='<spring:url value="/users/${user.id }.html" />'>
						${opera.titolo} </a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

<br>
<br>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>Risultati in autori</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${autori}" var="autore">
			<tr>
				<td><a href='<spring:url value="/users/${user.id }.html" />'>
						${autore.nome} ${autore.cognome }</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

