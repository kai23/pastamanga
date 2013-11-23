<%@ page import="pastamanga.User"%>
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<r:require module="jquery-ui" />
	<r:require modules="bootstrap" />
	<g:layoutTitle />
	<r:layoutResources />
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>

				<a class="navbar-brand" href="/pastamanga">Pastamanga</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<sec:ifLoggedIn>
						<li class="active"><g:link controller='user' action="show"
								id="${userInstance}">Mon Compte</g:link></li>
						<li><a href="#">Link</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">Dropdown <b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><g:link controller='user' action="index">List users</g:link></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li><a href="#">Separated link</a></li>
								<li><a href="#">One more separated link</a></li>
							</ul></li>
					</sec:ifLoggedIn>
					<sec:ifNotLoggedIn>
						<li class="active"><g:link controller='user' action="create">Créer Compte</g:link></li>
					</sec:ifNotLoggedIn>
					<form class="navbar-form navbar-left" role="search" id="search_anime">
				      <div class="form-group">
				        <input type="text" class="form-control" id="search_input" placeholder="Search">
				      </div>
				    </form>
				</ul>

				<ul class="nav navbar-nav navbar-right">
					<li><sec:ifLoggedIn>
							<span class="navbar-text navbar-right navbar-link">Bonjour
								<sec:username />!
							</span>
						</sec:ifLoggedIn></li>
					<li><sec:ifLoggedIn>
							<g:link class="active" controller='logout'>Déconnecter</g:link>
						</sec:ifLoggedIn> <sec:ifNotLoggedIn>
							<g:link class="active" controller='secure'>Se Connecter</g:link>
						</sec:ifNotLoggedIn></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>

	</div>

	<div class="container">
		<g:layoutBody />
	</div>
	<r:layoutResources />
	 <script>
$(function() {
	var myArr = [];
	var myArr2 = [];
	$.ajax({
		type: "GET",
		url: "/pastamanga/anime2.json",
		dataType: 'json',
		async: false,
		success: parseJson,
		complete: setupAC
	});

	function parseJson(json) {
		//find every query value
		$(json.animetitles).each(function(index, el) {
			$(el.anime).each(function(index2, el2) {
				var id = el2.aid;
				$(el2.title).each(function(i3, el3) {
					if (el3.lang == "fr") {
						myArr.push(el3.text);	
						myArr2.push({id:id, name:el3.text})					
					}
				});
			});
		});

	}

	function setupAC() {
		$("input#search_input").autocomplete({
			source: function(request, response) {
				var term = $.ui.autocomplete.escapeRegex(request.term);
				var matcher = new RegExp("" + term, "i");

				var result = $.grep(myArr, function(item) {
					return matcher.test(item);
				});
				console.log(result);
				response(result);
			},
			minLength: 1,
			select: function(event, ui) {
				$("#search_input").val(ui.item.value);
				$.each(myArr2, function(index, val) {
					if (val.name == ui.item.value) {
						window.location = '/pastamanga/anime/show/'+val.id;
					}
				});

			}
		});
	}
});
      </script>
</body>
</html>
