
<%@ page import="com.leo.grails.zapatillas.TiposZapatillas" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tiposZapatillas.label', default: 'TiposZapatillas')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-tiposZapatillas" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-tiposZapatillas" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="nombre" title="${message(code: 'tiposZapatillas.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="precio" title="${message(code: 'tiposZapatillas.precio.label', default: 'Precio')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'tiposZapatillas.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'tiposZapatillas.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'tiposZapatillas.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${tiposZapatillasInstanceList}" status="i" var="tiposZapatillasInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${tiposZapatillasInstance.id}">${fieldValue(bean: tiposZapatillasInstance, field: "nombre")}</g:link></td>
					
						<td>${fieldValue(bean: tiposZapatillasInstance, field: "precio")}</td>
					
						<td>${fieldValue(bean: tiposZapatillasInstance, field: "descripcion")}</td>
					
						<td><g:formatDate date="${tiposZapatillasInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${tiposZapatillasInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${tiposZapatillasInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
