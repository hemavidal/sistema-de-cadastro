<%@ page import="sc.model.Igreja" %>



<div class="fieldcontain ${hasErrors(bean: igrejaInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="igreja.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${igrejaInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: igrejaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="igreja.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${igrejaInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: igrejaInstance, field: 'pais', 'error')} required">
	<label for="pais">
		<g:message code="igreja.pais.label" default="Pais" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="pais" required="" value="${igrejaInstance?.pais}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: igrejaInstance, field: 'setores', 'error')} ">
	<label for="setores">
		<g:message code="igreja.setores.label" default="Setores" />
		
	</label>
	<g:select name="setores" from="${sc.model.Setor.list()}" multiple="multiple" optionKey="id" size="5" value="${igrejaInstance?.setores*.id}" class="many-to-many"/>

</div>

