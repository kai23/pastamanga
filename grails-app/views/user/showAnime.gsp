<%@ page import="pastamanga.User" %>
<%@ page import="pastamanga.Anime" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'anime.label', default: 'Anime')}" />
	</head>
	<body>

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
					
						<g:sortableColumn property="description" title="${message(code: 'anime.description.label', default: 'Desciption')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${animeInstanceList}" status="i" var="animeInstance">
				
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${animeInstance.id}">${fieldValue(bean: animeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: animeInstance, field: "category")}</td>
									
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
		</div>
		
	</body>
</html>
