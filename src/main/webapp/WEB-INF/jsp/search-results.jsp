<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Risultati ricerca</h1>
</center>

<br>

<c:if test="${!opere.isEmpty()}">
	<table class="table table-hover table-striped table-condensed">
		<thead>
			<tr>
				<th colspan="2">Risultati in opere</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${opere}" var="opera">
				<tr>
					<td align="center" width="256">
						<a href='<spring:url value="/autoriOpera/Opera/${opera.id }.html" />'>
							<img src="${opera.url }" alt="${opera.titolo}" height="100"/>
						</a>
					</td>
					<td align="left">
						<a href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'><c:out value="${opera.titolo}"/></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>

<c:if test="${!opere.isEmpty()} && ${!autori.isEmpty()}">
	<br>
	<br>
</c:if>

<c:if test="${!autori.isEmpty()}">
	<table class="table table-hover table-striped table-condensed">
		<thead>
			<tr>
				<th>Risultati in autori</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${autori}" var="autore">
				<tr>
					<td>
						<a href='<spring:url value="/autoriOpera/${autore.id}.html" />'>
							<c:out value="${autore.nome} ${autore.cognome}"/>
						</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>

