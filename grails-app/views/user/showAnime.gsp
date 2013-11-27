<%@ page import="pastamanga.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
	</head>
	<body>
	BlALLALALA
		<g:each in="${animeList}" status="i" var="animeInstanceList">
			${fieldValue(bean: animeInstanceList, field: "name")}
			
		</g:each>
	</body>
</html>
