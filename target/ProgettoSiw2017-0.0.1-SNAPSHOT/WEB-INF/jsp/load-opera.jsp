<%@ include file="../layout/taglib.jsp"%>

<center>
	<h1>Carica una nuova opera</h1>
</center>

<br>

<form:form modelAttribute="opera" cssClass="form-horizontal operaForm">

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
				<option value="${autore.id}">${autore.nome} ${autore.cognome}</option>
			</c:forEach>
		</select>
	</div>
	<div class="form-group">
		<label for="dimensioni">URL</label>
		<form:input type="url" class="form-control" path="url"
			placeholder="URL dell'immagine" />
	</div>
	<br>
	<input type="submit" value="Pubblica" class="btn btn-log btn-primary" />

</form:form>
<script type="text/javascript">
$(document).ready(function(){
	$(".operaForm").validate(
		{
			rules: {
				titolo: {
					required: true,
					minlength: 1
				},
				anno: {
					minlength: 1,
					maxlength: 4,
					digits: true
				},
				tecnica: {
					required: true,
					minlength: 1
				},
				dimensioni: {
					required: true,
					minlength: 3
				},
				autoreId: {
					required: true
				},
				url: {
					required: true,
					url: true
				}
			},
			highlight: function(element) {
				$(element).closest('.form-group').removeClass('has-success').addClass('has-error');
			},
			unhighlight: function(element) {
				$(element).closest('.form-group').removeClass('has-error').addClass('has-success');
			},
			messages: {
				titolo: {
					required: "titolo obbligatorio"
				},
				anno: {
					minlength: "anno non valido",
					maxlength: "anno non valido",
					digits: "l'anno deve essere numerico"
				},
				tecnica: {
					required: "tecnica obbligatoria"
				},
				dimensioni: {
					required: "dimensioni obbligatorie",
					minlength: "dimensioni non adeguate"
				},
				autoreId: {
					required: "seleziona l'autore"
				},
				url: {
					required: "Cerca l'immagine e scrivi l'URL!",
					url: "URL non valido"
				}
			},
		}	
	);
});
</script>