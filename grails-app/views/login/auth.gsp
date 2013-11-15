<html>
<head>
<meta name='layout' content='main' />
<r:require modules="bootstrap" />
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>

<body>
	<div id='login'>
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="./">Pastamanga</a>
				</div>

				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Link</a></li>
						<li><a href="#">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="user">List users</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li class="divider"></li>
								<li><a href="#">Separated link</a></li>
								<li class="divider"></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Search">
						</div>
						<button type="submit" class="btn btn-default">Submit</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="secure">Se connecter</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</nav>
			<div class='fheader'>
				<g:message code="springSecurity.login.header" />
			</div>

			<g:if test='${flash.message}'>
				<div class='login_message'>
					${flash.message}
				</div>
			</g:if>

			<form action='${postUrl}' method='POST' id='loginForm'
				class='cssform' autocomplete='off'>
				<p>
					<label for='username'><g:message
							code="springSecurity.login.username.label" />:</label> <input type='text'
						class='text_' name='j_username' id='username' />
				</p>

				<p>
					<label for='password'><g:message
							code="springSecurity.login.password.label" />:</label> <input
						type='password' class='text_' name='j_password' id='password' />
				</p>

				<p id="remember_me_holder">
					<input type='checkbox' class='chk' name='${rememberMeParameter}'
						id='remember_me'
						<g:if test='${hasCookie}'>checked='checked'</g:if> /> <label
						for='remember_me'><g:message
							code="springSecurity.login.remember.me.label" /></label>
				</p>

				<p>
					<input type='submit' id="submit"
						value='${message(code: "springSecurity.login.button")}' />
				</p>
			</form>
		</div>
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
