<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>

<table class="table table-bordered table-hover table-striped">
	<thead>
		<tr>
			<th>Autori opere</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${autori}" var="autore">
			<tr>
				<td>
					<a href='<spring:url value="/autoriOpera/${autore.id }.html" />'>
						${autore.nome }
					</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>