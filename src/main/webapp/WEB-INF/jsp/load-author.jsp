<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Inserisci un nuovo autore</h1>
</center>

<br>

<form:form commandName="autore" cssClass="form-horizontal">

	<c:if test="${param.success eq true}">
		<div class="alert alert-success"><center>Autore inserito!</center></div>
	</c:if>

	<div class="form-group">
		<label for="nome">Nome</label>
		<form:input type="nome" class="form-control" path="nome"
			placeholder="Nome" />
	</div>
	<div class="form-group">
		<label for="cognome">Cognome</label>
		<form:input type="cognome" class="form-control" path="cognome"
			placeholder="Cognome" />
	</div>
	<div class="form-group">
		<label for="nazione">Nazione</label>
		<form:input type="nazione" class="form-control" path="nazione"
			placeholder="Nazione" />
	</div>
	<div class="form-group">
		<label for="dataNascita">Data di nascita</label>
		<form:input type="dataNascita" class="form-control" path="dataNascita"
			placeholder="Data di nascita" />
	</div>
	<div class="form-group">
		<label for="dataMorte">Data di morte</label>
		<form:input type="dataMorte" class="form-control" path="dataMorte"
			placeholder="Data di morte" />
	</div>
	<br>
	<input type="submit" value="Inserisci" class="btn btn-log btn-primary" />

</form:form>