<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>

<center>
	<h1>Utenti registrati</h1>
</center>

<br>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>Utenti registrati</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${users}" var="user">
			<tr>
				<td>
					<a href='<spring:url value="/users/${user.id }.html" />'>
						${user.username }
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
