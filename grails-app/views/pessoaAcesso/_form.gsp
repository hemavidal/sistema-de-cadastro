<%@ page import="sc.acesso.PessoaAcesso" %>



<div class="fieldcontain ${hasErrors(bean: pessoaAcessoInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="pessoaAcesso.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${pessoaAcessoInstance?.login}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaAcessoInstance, field: 'pessoa', 'error')} required">
	<label for="pessoa">
		<g:message code="pessoaAcesso.pessoa.label" default="Pessoa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="pessoa" name="pessoa.id" from="${sc.model.Pessoa.list()}" optionKey="id" required="" value="${pessoaAcessoInstance?.pessoa?.id}" class="many-to-one"/>

</div>

