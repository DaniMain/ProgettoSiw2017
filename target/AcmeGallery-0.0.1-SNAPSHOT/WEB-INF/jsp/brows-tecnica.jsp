<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp" %>

<h1>Scegli la tecnica</h1>

<br>

<div role="tabpanel" class="tab-pane active" id="opere">

	<table
		class="table table-hover table-striped">
		<c:forEach items="${tecniche}" var="tecnica">
			<tr class="clickable-row" data-href="<spring:url value="/tecnicheOpere/${tecnica}.html" />">
				<td>
					<a href='<spring:url value="/tecnicheOpere/${tecnica}.html" />'><c:out value="${tecnica}"/></a>
				</td>
			</tr>
		</c:forEach>
	</table>
</div>
<script>
jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});
</script>