<%@ page import="pastamanga.User"%>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'username', 'error')} required form-group">
	<label for="username" class="col-sm-2 control-label"> <g:message
			code="user.username.label" default="Username" /> <span
		class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="username" class="form-control" required=""
			value="${userInstance?.username}" />
	</div>
</div>

<div
	class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required form-group">
	<label for="password" class="col-sm-2 control-label"> <g:message
			code="user.password.label" default="Password" /> <span
		class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField name="password" class="form-control" required=""
			value="${userInstance?.password}" />
	</div>
</div>


