<%@ page import="sc.model.Pessoa" %>



<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="pessoa.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${pessoaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'apelido', 'error')} required">
	<label for="apelido">
		<g:message code="pessoa.apelido.label" default="Apelido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apelido" required="" value="${pessoaInstance?.apelido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nivelDeCrescimento', 'error')} required">
	<label for="nivelDeCrescimento">
		<g:message code="pessoa.nivelDeCrescimento.label" default="Nivel De Crescimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="nivelDeCrescimento" from="${sc.NivelDeCrescimento?.values()}" keys="${sc.NivelDeCrescimento.values()*.name()}" required="" value="${pessoaInstance?.nivelDeCrescimento?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'estadoCivil', 'error')} required">
	<label for="estadoCivil">
		<g:message code="pessoa.estadoCivil.label" default="Estado Civil" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="estadoCivil" from="${sc.EstadoCivil?.values()}" keys="${sc.EstadoCivil.values()*.name()}" required="" value="${pessoaInstance?.estadoCivil?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'setor', 'error')} required">
	<label for="setor">
		<g:message code="pessoa.setor.label" default="Setor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="setor" name="setor.id" from="${sc.model.Setor.list()}" optionKey="id" required="" value="${pessoaInstance?.setor?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'grupoCaseiro', 'error')} required">
	<label for="grupoCaseiro">
		<g:message code="pessoa.grupoCaseiro.label" default="Grupo Caseiro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="grupoCaseiro" name="grupoCaseiro.id" from="${sc.model.GrupoCaseiro.list()}" optionKey="id" required="" value="${pessoaInstance?.grupoCaseiro?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'sexo', 'error')} required">
	<label for="sexo">
		<g:message code="pessoa.sexo.label" default="Sexo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sexo" from="${sc.Sexo?.values()}" keys="${sc.Sexo.values()*.name()}" required="" value="${pessoaInstance?.sexo?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'procedencia', 'error')} required">
	<label for="procedencia">
		<g:message code="pessoa.procedencia.label" default="Procedencia" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="procedencia" from="${sc.Procedencia?.values()}" keys="${sc.Procedencia.values()*.name()}" required="" value="${pessoaInstance?.procedencia?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'cidade', 'error')} required">
	<label for="cidade">
		<g:message code="pessoa.cidade.label" default="Cidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cidade" required="" value="${pessoaInstance?.cidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'companheiro', 'error')} required">
	<label for="companheiro">
		<g:message code="pessoa.companheiro.label" default="Companheiro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="companheiro" name="companheiro.id" from="${sc.model.Pessoa.list()}" optionKey="id" required="" value="${pessoaInstance?.companheiro?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'discipulador', 'error')} required">
	<label for="discipulador">
		<g:message code="pessoa.discipulador.label" default="Discipulador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="discipulador" name="discipulador.id" from="${sc.model.Pessoa.list()}" optionKey="id" required="" value="${pessoaInstance?.discipulador?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="pessoa.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${pessoaInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'endereco', 'error')} required">
	<label for="endereco">
		<g:message code="pessoa.endereco.label" default="Endereco" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="pessoa.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="estado" required="" value="${pessoaInstance?.estado}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'integracao', 'error')} required">
	<label for="integracao">
		<g:message code="pessoa.integracao.label" default="Integracao" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="integracao" precision="day"  value="${pessoaInstance?.integracao}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'nascimento', 'error')} required">
	<label for="nascimento">
		<g:message code="pessoa.nascimento.label" default="Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="nascimento" precision="day"  value="${pessoaInstance?.nascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'profissao', 'error')} required">
	<label for="profissao">
		<g:message code="pessoa.profissao.label" default="Profissao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="profissao" name="profissao.id" from="${sc.model.Profissao.list()}" optionKey="id" required="" value="${pessoaInstance?.profissao?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: pessoaInstance, field: 'sangue', 'error')} required">
	<label for="sangue">
		<g:message code="pessoa.sangue.label" default="Sangue" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sangue" from="${sc.Sangue?.values()}" keys="${sc.Sangue.values()*.name()}" required="" value="${pessoaInstance?.sangue?.name()}" />

</div>

