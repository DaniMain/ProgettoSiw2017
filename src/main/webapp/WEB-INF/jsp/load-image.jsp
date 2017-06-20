<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Carica una nuova opera</h1>
</center>

<br>

<form:form commandName="opera" cssClass="form-horizontal">

	<c:if test="${param.success eq true}">
		<div class="alert alert-success"><center>Caricamento completato</center></div>
	</c:if>

	<div class="form-group">
		<label for="titolo">Titolo</label>
		<form:input type="titolo" class="form-control" path="titolo"
			placeholder="Titolo" />
	</div>
	<div class="form-group">
		<label for="anno">Anno di composizione</label>
		<form:input type="anno" class="form-control" path="anno"
			placeholder="Anno" />
	</div>
	<div class="form-group">
		<label for="tecnica">Tecnica usata</label>
		<form:input type="tecnica" class="form-control" path="tecnica"
			placeholder="Tecnica" />
	</div>
	<div class="form-group">
		<label for="dimensioni">Dimensioni</label>
		<form:input type="dimensioni" class="form-control" path="dimensioni"
			placeholder="Dimensioni" />
	</div>
	<div class="form-group">
		<label for="autore">Autore</label>
		<select class="form-control" name="autoreId" multiple>
			<%-- <form:options items="${autori}" itemLabel="cognome" itemValue="id" /> --%>
			<c:forEach items="${autori}" var="autore">
				<option value="${autore.id}">${autore.nome} ${autore.cognome}<option>
			</c:forEach>
		</select>
	</div>
	<div class="form-group">
		<label for="dimensioni">Url</label>
		<form:input type="url" class="form-control" path="url"
			placeholder="Url dell'immagine" />
	</div>
	<br>
	<input type="submit" value="Pubblica" class="btn btn-log btn-primary" />

</form:form>