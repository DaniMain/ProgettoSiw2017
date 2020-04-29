<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<h1><c:out value="${anno}"/></h1>

<br>

<table class="table table-hover table-striped table-condensed">
	<c:forEach items="${opereAnno}" var="opera">
		<tr>
			<td align="center">
				<a href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'>
					<img src="${opera.url}" alt="${opera.titolo}" height="200"/>
				</a>
			</td>
			<td align="left" width="480">
				<a	href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'><c:out value="${opera.titolo}"/></a>
			</td>
		</tr>
	</c:forEach>
</table>