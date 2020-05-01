<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<h1><c:out value="${anno}"/></h1>

<br>

<!-- <table class="table table-hover table-striped table-condensed">
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
</table> -->
<table class="table-condensed" width="100%">
	<c:forEach items="${opereInTerzine}" var="terzina">
		<tr>
			<c:forEach items="${terzina}" var="opera">
				<td align="center">
					<div role="tabpanel" class="tab-pane active" id="home">
						<table class="table-condensed">
							<tbody>
								<tr>
									<td align="center">
										<a href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'>
											<img src="${opera.url}" alt="${opera.titolo}" height="150"/>
										</a>
									</td>
								</tr>
								<tr>
									<td align="center">
										<a href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'>
											<c:out value="${opera.titolo}"/>
										</a>
									</td>
								</tr>
								<tr>
									<td align="center">
										<a href='<spring:url value="/autoriOpera/${opera.autore.id}.html" />'>
											<c:out value="${opera.autore.nome} ${opera.autore.cognome}"/>
										</a>
									</td>
								</tr>
								<security:authorize access="hasRole('ROLE_ADMIN')">
								<tr>
									<td align="center">
										<a href='<spring:url value="/autoriOpera/Opera/cancella/${opera.id}-${opera.autore.id}.html" />'>
											<input type="submit" value="Rimuovi opera" class="btn btn-danger btn-primary" />
										</a>
									<td>
								<td>										
								</security:authorize>
							</tbody>
						</table>
					</div>
				</td>
			</c:forEach>
		</tr>
	</c:forEach>
</table>
