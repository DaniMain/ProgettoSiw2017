<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Inserisci un nuovo autore</h1>
</center>

<br>

<form:form modelAttribute="autore" cssClass="form-horizontal authorForm">

	<c:if test="${param.success eq true}">
		<div class="alert alert-success"><center>Autore inserito!</center></div>
	</c:if>

	<div class="form-group">
		<label for="nome">Nome</label>
		<form:input type="nome" class="form-control" path="nome" placeholder="Nome" />
		<form:errors path="nome"/>
	</div>
	<div class="form-group">
		<label for="cognome">Cognome</label>
		<form:input type="cognome" class="form-control" path="cognome" placeholder="Cognome" />
		<form:errors path="cognome"/>
	</div>
	<div class="form-group">
		<label for="nazione">Nazione</label>
		<form:input type="nazione" class="form-control" path="nazione" placeholder="Nazione" />
		<form:errors path="nazione"/>
	</div>
	<div class="form-group">
		<label for="dataNascita">Data di nascita</label>
		<form:input type="dataNascita" class="form-control" path="dataNascita" placeholder="mm/gg/aaaa" />
	</div>
	<div class="form-group">
		<label for="dataMorte">Data di morte</label>
		<form:input type="dataMorte" class="form-control" path="dataMorte" placeholder="mm/gg/aaaa" />
	</div>
	<br>
	<input type="submit" value="Inserisci" class="btn btn-log btn-primary" />

</form:form>
<script type="text/javascript">
$(document).ready(function(){
	$(".authorForm").validate(
		{
			rules: {
				nome: {
					required: true,
					minlength: 1
				},
				cognome: {
					required: true,
					minlength: 1
				},
				nazione: {
					required: true,
					minlength: 1
				},
				dataNascita: {
					required: true,
					date: true
				},
				dataMorte: {
					required: true,
					date: true
				}
			},
			highlight: function(element) {
				$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
			},
			unhighlight: function(element) {
				$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			},
			messages: {
				nome: {
					required: "nome obbligatorio"
				},
				cognome: {
					required: "cognome obbligatorio"
				},
				nazione: {
					required: "nazione obbligatoria"
				},
				dataNascita: {
					required: "data di nascita obbligatoria",
					date: "la data di nascita deve essere del tipo mm/gg/aaaa e precedente alla morte"
				},
				dataMorte: {
					required: "data di morte obbligatoria",
					date: "la data di nascita deve essere del tipo mm/gg/aaaa"
				}
			},
		}	
	);
});
</script>