<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/taglib.jsp" %>
    
    <h1>Scegli l'anno</h1>
    
    <div role="tabpanel" class="tab-pane active" id="opere">

		<br>

		<table class="table table-bordered table-hover table-striped table-condensed">
			<c:forEach items="${anni}" var="anno">
			<tr>
				<td>
					<a href='<spring:url value="/anniOpere/${anno}.html" />'>
						${anno}
					</a>
				</td>
			</tr>
		</c:forEach>
		</table>
    </div>