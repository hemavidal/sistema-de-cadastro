<%@ page import="sc.model.GrupoCaseiro" %>



<div class="fieldcontain ${hasErrors(bean: grupoCaseiroInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="grupoCaseiro.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${grupoCaseiroInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: grupoCaseiroInstance, field: 'pessoas', 'error')} ">
	<label for="pessoas">
		<g:message code="grupoCaseiro.pessoas.label" default="Pessoas" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${grupoCaseiroInstance?.pessoas?}" var="p">
    <li><g:link controller="pessoa" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="pessoa" action="create" params="['grupoCaseiro.id': grupoCaseiroInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'pessoa.label', default: 'Pessoa')])}</g:link>
</li>
</ul>


</div>

