<%@ include file="../layout/taglib.jsp" %>

<form:form commandName="user" cssClass="form-horizontal">
	
	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Registrazione avvenuta con successo!</div>
	</c:if>

	<div class="form-group">
		<label for="username" class="col-sm-2 control-label">Username:</label>
		<div class="col-sm-10">
			<form:input path="username" cssClass="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="nome" class="col-sm-2 control-label">Nome:</label>
		<div class="col-sm-10">
			<form:input path="nome" cssClass="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="cognome" class="col-sm-2 control-label">Cognome:</label>
		<div class="col-sm-10">
			<form:input path="cognome" cssClass="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label">Password:</label>
		<div class="col-sm-10">
			<form:password path="password" cssClass="form-control"/>
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" value="Registrati" class="btn btn-log btn-primary"/>
		</div>
	</div>
</form:form>
