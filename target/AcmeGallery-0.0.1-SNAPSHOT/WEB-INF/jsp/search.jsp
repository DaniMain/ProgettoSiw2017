<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Cerca nel sito</h1>
</center>

<br>

<c:if test="${param.success eq false}">
	<div class="alert alert-danger" style="text-align: center;">Nessun risultato</div>
</c:if>

<form action="<spring:url value="/cerca.html" />" method="post">

	<div class="form-group">
		<label for="chiave">Inserisci una parola chiave:</label> <input
			type="text" class="form-control" name="chiave" />
	</div>

	<br>
	
	<div style="text-align: center;">
		<input type="submit" value="Cerca" class="btn btn-log btn-primary" />
	</div>

</form>