<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Compila la form di registrazione con i tuoi dati</h1>
</center>

<br>

<form:form commandName="user" cssClass="form-horizontal">

	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Registrazione avvenuta con	successo!</div>
	</c:if>
	
	<c:if test="${param.duplicato eq true}">
		<div class="alert alert-warning">Username già presente. Prova con un altro</div>
	</c:if>
	
	<c:if test="${param.success eq false}">
		<div class="alert alert-warning">Password diverse</div>
	</c:if>

	<div class="form-group">
		<label for="username" class="col-sm-2 control-label">Username: </label>
		<form:errors path="username"/>
		<div class="col-sm-10">
			<form:input path="username" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label for="nome" class="col-sm-2 control-label">Nome:</label>
		<form:errors path="nome"/>
		<div class="col-sm-10">
			<form:input path="nome" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label for="cognome" class="col-sm-2 control-label">Cognome:</label>
		<form:errors path="cognome"/>
		<div class="col-sm-10">
			<form:input path="cognome" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label for="dataNascita" class="col-sm-2 control-label">Data
			di nascita:</label>
		<form:errors path="dataNascita"/>
		<div class="col-sm-10">
			<form:input path="dataNascita" cssClass="form-control"
				placeholder="dd/mm/yyyy" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Password:</label>
		<form:errors path="password"/>
		<div class="col-sm-10">
			<form:password path="password" cssClass="form-control" />
		</div>
	</div>
	<div class="form-group">
		<label for="password1" class="col-sm-2 control-label">Conferma password:</label>
		<div class="col-sm-10">
			<input type="password" name="password1" class="form-control" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" value="Registrati"
				class="btn btn-log btn-primary" />
		</div>
	</div>
</form:form>
