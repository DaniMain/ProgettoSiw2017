<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../layout/taglib.jsp" %>
    
  <h1>${opera.titolo}</h1>
  
  <br>
  <br>
  
  <div role="tabpanel" class="tab-pane active" id="home">

		<br>

		<table class="table table-condensed">
			<tbody>
				<tr>
					<td>Titolo:</td> 
					<td>${opera.titolo}</td>
					<!-- non chiedeteci perché hahah lol(lo) -->
					<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
				</tr>
				<tr>
					<td>Anno:</td> 
					<td>${opera.anno}</td>
					<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
				</tr>
				<tr>
					<td>Tecnica:</td> 
					<td>${opera.tecnica}</td>
					<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
				</tr>
				<tr>
					<td>Dimensioni:</td> 
					<td>${opera.dimensioni}</td>
					<td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
				</tr>
			</tbody>
		</table>
    </div>