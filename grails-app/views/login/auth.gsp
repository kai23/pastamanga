<html>
<head>
	<meta name='layout' content='main'/>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>

<body>
<div class='container'>
	<form action='${postUrl}' method='POST' role="form" autocomplete='off' class="col-xs-4">
		<div class='fheader'><g:message code="springSecurity.login.header"/></div>
		<div class="form-group">
			<p class="help-block">
				<g:if test='${flash.message}'>
				<div class='login_message'>${flash.message}</div>
				</g:if>	
			</p>
			<label for='username'><g:message code="springSecurity.login.username.label"/>:</label>
			<input type='text' class="form-control" placeholder="Username" name='j_username' id='username'/>
		</div>
		<div class="form-group">
			<label for='password'><g:message code="springSecurity.login.password.label"/>:</label>
			<input type='password' class="form-control" placeholder="Password" name='j_password' id='password'/>
		</div>
		<div class="checkbox">	
			<input type='checkbox' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/> Remember me
			
		</div>
			<input type='submit' id="submit" class="btn btn-default" value='${message(code: "springSecurity.login.button")}'/>
	</form>

</div>
<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
</script>
</body>
</html>
