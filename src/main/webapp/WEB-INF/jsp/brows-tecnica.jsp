<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>

<h1>Scegli la tecnica</h1>

<div role="tabpanel" class="tab-pane active" id="opere">

	<br>

	<table
		class="table table-bordered table-hover table-striped table-condensed">
		<c:forEach items="${tecniche}" var="tecnica">
			<tr>
				<td><a href='<spring:url value="/tecnicheOpere/${tecnica}.html" />'>
					${tecnica} </a></td>
			</tr>
		</c:forEach>
	</table>
</div>