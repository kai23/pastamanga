
<%@ page import="pastamanga.Anime" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'anime.label', default: 'Anime')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-anime" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-anime" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'anime.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="category" title="${message(code: 'anime.category.label', default: 'Category')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'anime.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'anime.description.label', default: 'Description')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${animeInstanceList}" status="i" var="animeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${animeInstance.id}">${fieldValue(bean: animeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: animeInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: animeInstance, field: "date")}</td>
					
						<td>${fieldValue(bean: animeInstance, field: "description")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${animeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
