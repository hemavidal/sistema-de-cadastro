
<%@ page import="sc.model.Pessoa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'pessoa.label', default: 'Pessoa')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-pessoa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-pessoa" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nome" title="${message(code: 'pessoa.nome.label', default: 'Nome')}" />
					
						<g:sortableColumn property="apelido" title="${message(code: 'pessoa.apelido.label', default: 'Apelido')}" />
					
						<g:sortableColumn property="nivelDeCrescimento" title="${message(code: 'pessoa.nivelDeCrescimento.label', default: 'Nivel De Crescimento')}" />
					
						<g:sortableColumn property="estadoCivil" title="${message(code: 'pessoa.estadoCivil.label', default: 'Estado Civil')}" />
					
						<g:sortableColumn property="sexo" title="${message(code: 'pessoa.sexo.label', default: 'Sexo')}" />
					
						<g:sortableColumn property="procedencia" title="${message(code: 'pessoa.procedencia.label', default: 'Procedencia')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${pessoaInstanceList}" status="i" var="pessoaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${pessoaInstance.id}">${fieldValue(bean: pessoaInstance, field: "nome")}</g:link></td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "apelido")}</td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "nivelDeCrescimento")}</td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "estadoCivil")}</td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "sexo")}</td>
					
						<td>${fieldValue(bean: pessoaInstance, field: "procedencia")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${pessoaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
