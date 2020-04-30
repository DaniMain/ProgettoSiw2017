<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<h1><c:out value="${user.username}"/></h1>

<br>
<br>

<table class="table-condensed">
	<tbody>
		<tr>
			<td>Nome:</td>
			<td><c:out value="${user.nome}"/></td>
		</tr>
		<tr>
			<td>Cognome:</td>
			<td><c:out value="${user.cognome}"/></td>

		</tr>
		<tr>
			<td>Data di nascita:</td>
			<td><c:out value="${user.dataNascita}"/></td>
		</tr>
	</tbody>
</table>