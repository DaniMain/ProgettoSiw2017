<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Risultati ricerca</h1>
</center>

<br>

<c:if test="${!opereInTerzine.isEmpty()}">
	<!-- 
	<table class="table table-hover table-striped table-condensed">
		<thead>
			<tr>
				<th colspan="2">Risultati in opere</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${opere}" var="opera">
				<tr>
					<td align="center" width="256">
						<a href='<spring:url value="/autoriOpera/Opera/${opera.id }.html" />'>
							<img src="${opera.url }" alt="${opera.titolo}" height="100"/>
						</a>
					</td>
					<td align="left">
						<a href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'><c:out value="${opera.titolo}"/></a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table> -->
	<h4>Risultati in opere:</h4>
	<br>
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
</c:if>

<c:if test="${!opereInTerzine.isEmpty() && !autori.isEmpty()}">
	<br>
	<br>
</c:if>

<c:if test="${!autori.isEmpty()}">
	<h4>Risultati in autori:</h4>
	<br>
	<table class="table table-hover table-striped table-condensed">
		<tbody>
			<c:forEach items="${autori}" var="autore">
				<tr class="clickable-row" data-href="<spring:url value="/autoriOpera/${autore.id}.html" />">
					<td>
						<a href='<spring:url value="/autoriOpera/${autore.id}.html" />'>
							<c:out value="${autore.nome} ${autore.cognome}"/>
						</a>
					</td>
					<security:authorize access="hasRole('ROLE_ADMIN')">		
						<td align="right">
							<a
								href='<spring:url value="/autoriOpera/cancella/${autore.id}.html" />'>
									<input type="submit" value="Rimuovi autore"
									class="btn btn-danger btn-primary" />
							</a>
						</td>
					</security:authorize>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</c:if>
<script>
jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});
</script>

