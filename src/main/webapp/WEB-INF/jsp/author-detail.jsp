<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/taglib.jsp" %>
 
 <h1>${autore.nome } ${autore.cognome }</h1>
 
 <br>
 <br>
 
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Dettagli autore</a></li>
  	<li> <a href="#opere" aria-controls="profile" role="tab" data-toggle="tab">Opere relizzate</a></li>
  </ul>

  <!-- Tab panes -->
  <div class="tab-content">
    <div role="tabpanel" class="tab-pane active" id="home">

		<br>

		<table class="table-condensed">
			<tbody>
				<tr>
					<td>Nome:</td> 
					<td>${autore.nome}</td>
					<!-- non chiedeteci perché hahah lol(lo) -->
					</tr>
				<tr>
					<td>Cognome:</td> 
					<td>${autore.cognome}</td>
					</tr>
				<tr>
					<td>Nazionalità:</td> 
					<td>${autore.nazione}</td>
					</tr>
				<tr>
					<td>Data di nascita:</td> 
					<td>${autore.dataNascita}</td>
					</tr>
				<tr>
					<td>Data di morte:</td> 
					<td>${autore.dataMorte}</td>
					</tr>
			</tbody>
		</table>
    </div>
    
    <div role="tabpanel" class="tab-pane active" id="opere">

		<br>

		<table class="table-bordered table-hover table-striped table-condensed">
			<c:forEach items="${autore.opere}" var="opera">
			<tr>
				<td>
					<a href='<spring:url value="/autoriOpera/Opera/${opera.id}.html" />'>
						${opera.titolo}
					</a>
				</td>
			</tr>
		</c:forEach>
		</table>
    </div>
    	
    </div>
  </div>