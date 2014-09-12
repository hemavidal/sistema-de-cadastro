
<%@ page import="sc.model.Igreja" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'igreja.label', default: 'Igreja')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<r:require modules="bootstrap"/>
	</head>
	<body>
		<a href="#list-igreja" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-igreja" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table">
			<thead>
					<tr>
					
						<g:sortableColumn property="cidade" title="${message(code: 'igreja.cidade.label', default: 'Cidade')}" />
					
						<g:sortableColumn property="estado" title="${message(code: 'igreja.estado.label', default: 'Estado')}" />
					
						<g:sortableColumn property="pais" title="${message(code: 'igreja.pais.label', default: 'Pais')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${igrejaInstanceList}" status="i" var="igrejaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${igrejaInstance.id}">${fieldValue(bean: igrejaInstance, field: "cidade")}</g:link></td>
					
						<td>${fieldValue(bean: igrejaInstance, field: "estado")}</td>
					
						<td>${fieldValue(bean: igrejaInstance, field: "pais")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${igrejaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
