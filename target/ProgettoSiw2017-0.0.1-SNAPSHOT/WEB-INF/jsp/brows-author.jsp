<%@page import="org.springframework.ui.Model"%>
<%@page import="java.util.Comparator"%>
<%@page import="it.uniroma3.ps2017.repository.AutoreRepository"%>
<%@page import="it.uniroma3.ps2017.model.Autore"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<c:if test="${param.success eq true}">
	<br>
	<div class="alert alert-danger">
		<center>Autore rimosso</center>
	</div>
	<br>
	<br>
</c:if>

<h1>Scegli l'autore</h1>

<br>

<table class="table table-hover table-striped">
	<c:forEach items="${autori}" var="autore">
		<tr>
			<td>
				<a href='<spring:url value="/autoriOpera/${autore.id}.html" />'>
					<c:out value="${autore.nome} ${autore.cognome}"/>
				</a>
			</td>
			<security:authorize access="hasRole('ROLE_ADMIN')">		
				<td align="right">
					<a
						href='<spring:url value="/autoriOpera/cancella/${autore.id}.html" />'>
							<input type="submit" value="Rimuovi autore"
							class="btn btn-danger btn-primary" />
					</a>
				</td>
			</security:authorize>
		</tr>
	</c:forEach>
</table>