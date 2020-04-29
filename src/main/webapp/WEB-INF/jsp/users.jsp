<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>

<center>
	<h1>Utenti registrati</h1>
</center>

<br>

<table class="table table-hover table-striped">
	<tbody>
		<c:forEach items="${users}" var="user">
			<tr>
				<td>
					<a href='<spring:url value="/users/${user.id}.html" />'>
						<c:out value="${user.username}"/>
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
