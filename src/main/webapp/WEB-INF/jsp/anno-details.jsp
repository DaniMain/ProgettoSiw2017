<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<h1>${anno }</h1>

<br>

<table class="table-bordered table-hover table-striped table-condensed">
	<c:forEach items="${opereAnno}" var="opera">
		<tr>
			<td align="center"><a
				href='<spring:url value="/autoriOpera/Opera/${opera.id }.html" />'>
				<img src="${opera.url }" alt="${opera.titolo}" height="128"/></a>
			</td>
			<td align="center" width="256"><a
				href='<spring:url value="/autoriOpera/Opera/${opera.id }.html" />'>
					${opera.titolo} </a>
			</td>
		</tr>
	</c:forEach>
</table>