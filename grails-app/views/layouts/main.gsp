<%@ page import="pastamanga.User" %>
<!DOCTYPE html>
<html lang="fr">
   <head>
   <r:require modules="bootstrap" />
      <g:layoutTitle/>
      <r:layoutResources/>
   </head>
   <body>
   <div class="container">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> 
						<span class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="/pastamanga">Pastamanga</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">			
					<sec:ifLoggedIn>
						<li class="active"><g:link controller='user' action="show" id="${userInstance}">Mon Compte</g:link></li>
						<li><a href="#">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><g:link controller='user' action="index">List users</g:link></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li><a href="#">Separated link</a></li>
								<li><a href="#">One more separated link</a></li>
							</ul>
						</li>
					</sec:ifLoggedIn>
					<sec:ifNotLoggedIn>
						<li class="active"><g:link controller='user' action="create">Créer Compte</g:link></li>
					</sec:ifNotLoggedIn>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><sec:ifLoggedIn>
							<span class="navbar-text navbar-right navbar-link">Bonjour <sec:username/>! </span>
						</sec:ifLoggedIn></li>
					<li>
						<sec:ifLoggedIn>
							<g:link class="active" controller='logout'>Déconnecter</g:link>
						</sec:ifLoggedIn>
						<sec:ifNotLoggedIn>
							<g:link class="active" controller='secure'>Se Connecter</g:link>
						</sec:ifNotLoggedIn>
					</li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>

	</div>

	<div class="container">
		<g:layoutBody />
	</div>
	<r:layoutResources />
</body>
</html>
