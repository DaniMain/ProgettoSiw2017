<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Compila la form di registrazione con i tuoi dati</h1>
</center>

<br>

<form:form modelAttribute="user" cssClass="form-horizontal registrationForm">

	<c:if test="${param.success eq true}">
		<div class="alert alert-success" style="text-align: center;">Registrazione avvenuta con	successo!</div>
	</c:if>
	<c:if test="${param.duplicato eq true}">
		<div class="alert alert-warning" style="text-align: center;">Username già esistente</div>
	</c:if>
	<c:if test="${param.success eq false}">
		<div class="alert alert-warning" style="text-align: center;">Ci sono degli errori da correggere</div>
	</c:if>

	<div class="form-group row">
		<label for="username" class="col-sm-2 col-form-label">Username:</label>
		<div class="col-sm-10">
			<form:input path="username" cssClass="form-control" />
			<form:errors path="username" />
		</div>
	</div>
	
	<div class="form-group row">
		<label for="nome" class="col-sm-2 col-form-label">Nome:</label>
		<div class="col-sm-10">
			<form:input path="nome" cssClass="form-control" />
			<form:errors path="nome" />
		</div>
	</div>
	
	<div class="form-group row">
		<label for="cognome" class="col-sm-2 col-form-label">Cognome:</label>
		<div class="col-sm-10">
			<form:input path="cognome" cssClass="form-control" />
			<form:errors path="cognome" />
		</div>
	</div>

	<div class="form-group row">
		<label for="dataNascita" class="col-sm-2 col-form-label">Data di nascita:</label>
		<div class="col-sm-10">
			<form:input path="dataNascita" cssClass="form-control" placeholder="mm/gg/aaaa" />
			<form:errors path="dataNascita" />
		</div>
	</div>
	
	<div class="form-group row">
		<label for="password" class="col-sm-2 col-form-label">Password:</label>
		<div class="col-sm-10">
			<form:password path="password" cssClass="form-control" />
			<form:errors path="password" />
		</div>
	</div>
	
	<div class="form-group row">
		<label for="password" class="col-sm-2 col-form-label">Conferma password:</label>
		<div class="col-sm-10">
			<input type="password" name="password_again" id="password_again" class="form-control" />
		</div>
	</div>
	<!-- 
	<div class="form-group">
		<label for="password1" class="col-sm-2 control-label">Conferma password:</label>
		<div class="col-sm-10">
			<input type="password" name="password1" class="form-control" />
		</div>
	</div> -->
	
	<div class="form-group row" style="float: right;">
		<div class="col-sm-offset-2 col-sm-10">
			<input type="submit" value="Registrati" class="btn btn-log btn-primary" />
		</div>
	</div>
	
</form:form>
<br>
<br>
<script type="text/javascript">
$(document).ready(function(){
	$(".registrationForm").validate(
		{
			rules: {
				username: {
					required: true,
					minlength: 4
				},
				nome: {
					required: true,
					minlength: 1
				},
				cognome: {
					required: true,
					minlength: 1
				},
				dataNascita: {
					required: true,
					date: true
				},
				password: {
					required: true,
					minlength: 8
				},
				password_again: {
					required: true,
					equalTo: "#password"
				}
			},
			highlight: function(element) {
				$(element).closest('.form-group').removeClass('has-success').addClass('has-error').css({"color": "red"});
			},
			unhighlight: function(element) {
				$(element).closest('.form-group').removeClass('has-error').addClass('has-success').css({"color": "green"});
			},
			messages: {
				username: {
					required: "questo campo è obbligatorio",
					minlength: "inserire almeno 4 caratteri alfanumerici"
				},
				nome: {
					required: "questo campo è obbligatorio",
					minlength: "inserire almeno 1 carattere"
				},
				cognome: {
					required: "questo campo è obbligatorio",
					minlength: "inserire almeno 1 carattere"
				},
				dataNascita: {
					required: "questo campo è obbligatorio",
					date: "inserire una data del tipo mm/gg/aaaa"
				},
				password: {
					required: "questo campo è obbligatorio",
					minlength: "la password deve essere lunga almeno 8 caratteri"
				},
				password_again: {
					required: "questo campo è obbligatorio",
					equalTo: "password diverse"
				}
			}

		}	
	);
});
</script>

