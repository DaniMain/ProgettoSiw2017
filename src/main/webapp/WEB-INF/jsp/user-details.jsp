<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>
    
<h1>${user.username }</h1>

<br>
<br>

<table class="table table-condensed">
	<tbody>
		<tr>
			<td>Nome:</td> 
			<td>${user.nome}</td>
		</tr>
		<tr>
			<td>Cognome:</td> 
			<td>${user.cognome}</td>
		</tr>
		<tr>
			<td>Data di nascita:</td> 
			<td>${user.dataNascita}</td>
		</tr>
	</tbody>
</table>