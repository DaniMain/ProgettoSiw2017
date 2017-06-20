<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/taglib.jsp"%>

<h1>${opera.titolo}</h1>

<br>
<br>

<table>
	<tbody>
		<tr>
			<td><img src="${opera.url }" alt="${opera.titolo }" height="400" /></td>

			<td align="center" width="512">
				<div role="tabpanel" class="tab-pane active" id="home">
					<table class="table-condensed">
						<tbody>
							<tr>
								<td align="right">Autore:</td>
								<td>${opera.autore.nome} ${opera.autore.cognome}</td>
							</tr>
							<tr>
								<td align="right">Anno:</td>
								<td>${opera.anno}</td>
							</tr>
							<tr>
								<td align="right">Tecnica:</td>
								<td>${opera.tecnica}</td>
							</tr>
							<tr>
								<td align="right">Dimensioni:</td>
								<td>${opera.dimensioni}</td>
							</tr>
							<tr>
							<security:authorize access="hasRole('ROLE_ADMIN')">
								<td colspan="2" align="center">
									<a href='<spring:url 
										value="/autoriOpera/Opera/cancella/${opera.id}-${opera.autore.id }.html" />'>
										<input type="submit" value="Rimuovi opera" 
											class="btn btn-danger btn-primary" />
									</a>
								</td>
							</security:authorize>
							</tr>
						</tbody>
					</table>
				</div>
			</td>
		</tr>

	</tbody>
</table>
<br>
<br>
<br>
<br>