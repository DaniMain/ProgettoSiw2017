<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<br>

<c:if test="${param.success eq true}">
	<br>
	<div class="alert alert-danger">
		<center>Autore rimosso</center>
	</div>
	<br>
	<br>
</c:if>

<table class="table table-hover table-striped">
	<thead>
		<tr>
			<th colspan="2">Autori opere</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${autori}" var="autore">
			<tr>
				<td><a
					href='<spring:url value="/autoriOpera/${autore.id }.html" />'>
						${autore.nome } ${autore.cognome }</a>
				</td>
				<security:authorize access="hasRole('ROLE_ADMIN')">		
					<td align="right">
						<a
							href='<spring:url value="/autoriOpera/cancella/${autore.id }.html" />'>
								<input type="submit" value="Rimuovi autore"
								class="btn btn-danger btn-primary" />
						</a>
					</td>
				</security:authorize>
			</tr>
		</c:forEach>
	</tbody>
</table>