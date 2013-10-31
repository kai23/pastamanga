<%@ page import="pastamanga.Anime" %>



<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="anime.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${animeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="anime.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="category" required="" value="${animeInstance?.category}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'date', 'error')} ">
	<label for="date">
		<g:message code="anime.date.label" default="Date" />
		
	</label>
	<g:textField name="date" value="${animeInstance?.date}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: animeInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="anime.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${animeInstance?.description}"/>
</div>

