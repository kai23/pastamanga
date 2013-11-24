
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title></title>
	</head>
	<body>
		<div class="container">
			<div class="row">
				<h4>Bienvenue sur la page de « ${animeBean.name} »</h4>
				<h5>Il fait partie de la catégorie ${animeBean.category}</h5>
			</div>
			<ul class="property-list anime list-unstyled">
            
                <g:if test="${animeBean?.name}">
                <li class="fieldcontain">
                    <span id="name-label" class="property-label"><g:message code="anime.name.label" default="Name : " /></span>
                    <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${animeBean}" field="name"/></span>                   
                </li>
                </g:if>   
                <g:if test="${animeBean?.category}">
                <li class="fieldcontain">
                    <span id="category-label" class="property-label"><g:message code="anime.category.label" default="Category : " /></span>
                    <span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${animeBean}" field="category"/></span>                   
                </li>
                </g:if>
                <g:if test="${animeBean?.date}">
                <li class="fieldcontain">
                    <span id="date-label" class="property-label"><g:message code="anime.date.label" default="Date : " /></span>
                    <span class="property-value" aria-labelledby="date-label"><g:fieldValue bean="${animeBean}" field="date"/></span>                   
                </li>
                </g:if>
                <g:if test="${animeBean?.description}">
                <li class="fieldcontain">
                    <span id="category-label" class="property-label"><g:message code="anime.category.label" default="Description : " /></span>
                    <span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${animeBean}" field="description"/></span>                   
                </li>
                </g:if>
                <sec:ifLoggedIn>
                    <fieldset class="buttons">
	                    <g:link class="Anime" action="addAnimeToUser" resource="${animeBean}"><g:message code="default.button.addAnimeToUser.label" default="Add to my list" /></g:link>
	                </fieldset>
                </sec:ifLoggedIn>
                          
            
            </ul>
		</div>
	</body>
</html>
