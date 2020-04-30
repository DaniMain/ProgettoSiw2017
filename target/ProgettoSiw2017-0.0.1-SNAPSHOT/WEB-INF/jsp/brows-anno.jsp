<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<h1>Scegli l'anno</h1>

<br>

<div role="tabpanel" class="tab-pane active" id="opere">

	<table
		class="table table-hover table-striped">
		<c:forEach items="${anni}" var="anno">
			<tr>
				<td>
					<a href='<spring:url value="/anniOpere/${anno}.html" />'><c:out value="${anno}"/></a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>