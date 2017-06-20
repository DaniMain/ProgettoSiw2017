<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Risultati ricerca</h1>
</center>

<br>

<table class="table-bordered table-striped table-hover table-condensed">
	<thead>
		<tr>
			<th colspan="2">Risultati in opere</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${opere}" var="opera">
			<tr>
				<td align="center"><a
					href='<spring:url value="/autoriOpera/Opera/${opera.id }.html" />'>
					<img src="${opera.url }" alt="${opera.titolo}" height="128"/></a>
				</td>
				<td align="center" width="256"><a
					href='<spring:url value="/autoriOpera/Opera/${opera.id }.html" />'>
						${opera.titolo} </a>
				</td>
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
				<td><a
					href='<spring:url value="/autoriOpera/${autore.id }.html" />'>
						${autore.nome} ${autore.cognome }</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>

