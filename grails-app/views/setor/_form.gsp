<%@ page import="sc.model.Setor" %>



<div class="fieldcontain ${hasErrors(bean: setorInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="setor.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${setorInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: setorInstance, field: 'gruposCaseiros', 'error')} ">
	<label for="gruposCaseiros">
		<g:message code="setor.gruposCaseiros.label" default="Grupos Caseiros" />
		
	</label>
	<g:select name="gruposCaseiros" from="${sc.model.GrupoCaseiro.list()}" multiple="multiple" optionKey="id" size="5" value="${setorInstance?.gruposCaseiros*.id}" class="many-to-many"/>

</div>

