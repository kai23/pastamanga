<!doctype html>
<html>
<<<<<<< HEAD
	<head>
		<meta name="layout" content="main" />
		<title>Pastamanga</title>
	</head>
	
	<body>
		Page d'accueuil !
	</body>
</html>
=======
<head>
<meta name="layout" content="main" />
<r:require modules="bootstrap" />
<r:require module="jquery-ui" />
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-default" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Pastamanga</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="user/create">Create Account</a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Dropdown <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="user">List users</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-left" role="search">
					<div class="form-group">
						<input type="text" id="search_input" class="form-control"
							placeholder="Search">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="secure">Se connecter</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
	</div>
	<script>

$(function() {
	$("#search_input").bind( "keydown", function( event ) {
	    if ( event.keyCode === $.ui.keyCode.TAB && $( this ).data( "ui-autocomplete" ).menu.active ) {
	      event.preventDefault();
		}
	});	
	 $("#search_input").autocomplete({
          source: $.ajax ({
          	  type: "GET",
          	  url: "http://myanimelist.net/api/anime/search.xml?q=bleach&callback=?",
          	  dataType: 'jsonp',
          	  async: false,
          	  username: "kai23",
          	  password: "hcyzq3b9",          	  
          	  success: function( xml ) {
				console.log("hey !");
         	 }
          	})
      });
});
</script>
</body>
</html>


>>>>>>> 3fe987f3965bf4430d317641bbe74a1d4d2fa059
