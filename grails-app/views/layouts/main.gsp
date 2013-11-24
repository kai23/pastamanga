<!DOCTYPE html>
<html>
<head>
	<title>Business Template</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<!-- ____ Scripts ____  -->
	<!-- jQuery -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="//code.jquery.com/ui/1.10.3/jquery-ui.js"></script>

	<!-- Bootstrap -->
    <script src="/pastamanga/js/bootstrap.min.js"></script>

    <!-- Le thème -->
    <script src="/pastamanga/js/theme.js"></script>
    <script type="text/javascript" src="/pastamanga/js/index-slider.js"></script>
    

    <!-- ____ Styles ____  -->
    <!-- jQuery -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" class="css">
    <!-- bootstrap -->
    <link href="/pastamanga/css/bootstrap.css" rel="stylesheet">
    
	<!-- thème -->
    <link rel="stylesheet" type="text/css" href="/pastamanga/css/theme.css">
    <link rel="stylesheet" href="/pastamanga/css/index.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="/pastamanga/css/sign-in.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="/pastamanga/css/sign-up.css" type="text/css" media="screen" />
	
	
	<!-- Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="/pastamanga/css/lib/animate.css" media="screen, projection">    
	    <!--[if lt IE 9]>
	      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	    <![endif]-->
</head>
<body class="pull_top">
	<g:if test="${params.action != null }">
   		<div class="navbar navbar-inverse navbar-static-top">
	</g:if>
	<g:else>
    	<div class="navbar transparent navbar-inverse navbar-fixed-top">
	</g:else>
      <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="/pastamanga">
                <strong>Pastamanga</strong>
            </a>
            <div class="nav-collapse collapse">
				<ul class="nav">
            		<li><input type="search" id="search_input" name="search_input"></li>
				</ul>
                <ul class="nav pull-right">
                	<sec:ifLoggedIn>
	                    <li><g:link controller='user' action="show" id="${userInstance}">Mon compte</g:link></li>
	                    <li><g:link controller='logout'>Déconnexion</g:link></li>
                	</sec:ifLoggedIn>
                	<sec:ifNotLoggedIn>
	                    <li><g:link controller='user' action="create">Créer Compte</g:link></li>
	                    <li><a class="btn-header" href="/pastamanga/login">Sign in</a></li>
                	</sec:ifNotLoggedIn>
                </ul>
            </div>
        </div>
      </div>
    </div>

	<g:layoutBody />
    <!-- starts footer -->
    <footer id="footer">
        <div class="container">
            <div class="row sections">
                <div class="span4 recent_posts">
                    <h3 class="footer_header">
                        Recent Posts
                    </h3>
                    <div class="post">
                        <a href="/pastamanga/blogpost.html">
                            <img src="/pastamanga/img/recent_post1.png" class="img-circle" />
                        </a>
                        <div class="date">
                            Wed, 12 Dec
                        </div>
                        <a href="/pastamanga/blogpost.html" class="title">
                            Randomised words which don't look embarrasing hidden.
                        </a>
                    </div>
                    <div class="post">
                        <a href="/pastamanga/blogpost.html">
                            <img src="/pastamanga/img/recent_post2.png" class="img-circle" />
                        </a>
                        <div class="date">
                            Mon, 12 Dec
                        </div>
                        <a href="/pastamanga/blogpost.html" class="title">
                            Randomised words which don't look embarrasing hidden.
                        </a>
                    </div>
                </div>
                <div class="span4 testimonials">
                    <h3 class="footer_header">
                        Testimonials
                    </h3>
                    <div class="wrapper">
                        <div class="quote">
                            <span>“</span>
                            There are many variations of passages of randomised words which don't look even slightly believable. You need to be sure there isn't anything embarrassing of text.
                            <span></span>
                        </div>
                        <div class="author">
                            <img src="/pastamanga/img/user-display.png" />
                            <div class="name">Alejandra Galvan Castillo</div>
                            <div class="info">
                                Details Canvas
                            </div>
                        </div>
                    </div>
                </div>
                <div class="span4 contact">
                    <h3 class="footer_header">
                        Contact
                    </h3>
                    <form action="#" method="post">
                        <input type="text" placeholder="Your name" />
                        <input type="text" placeholder="Your email" />
                        <textarea rows="3" placeholder="Message"></textarea>
                        <input type="submit" value="Send" />
                    </form>
                </div>
            </div>
            <div class="row credits">
                <div class="span12">
                    <div class="row social">
                        <div class="span12">
                            <a href="/pastamanga/#" class="facebook">
                                <span class="socialicons ico1"></span>
                                <span class="socialicons_h ico1h"></span>
                            </a>
                            <a href="/pastamanga/#" class="twitter">
                                <span class="socialicons ico2"></span>
                                <span class="socialicons_h ico2h"></span>
                            </a>
                            <a href="/pastamanga/#" class="gplus">
                                <span class="socialicons ico3"></span>
                                <span class="socialicons_h ico3h"></span>
                            </a>
                            <a href="/pastamanga/#" class="flickr">
                                <span class="socialicons ico4"></span>
                                <span class="socialicons_h ico4h"></span>
                            </a>
                            <a href="/pastamanga/#" class="pinterest">
                                <span class="socialicons ico5"></span>
                                <span class="socialicons_h ico5h"></span>
                            </a>
                            <a href="/pastamanga/#" class="dribble">
                                <span class="socialicons ico6"></span>
                                <span class="socialicons_h ico6h"></span>
                            </a>
                            <a href="/pastamanga/#" class="behance">
                                <span class="socialicons ico7"></span>
                                <span class="socialicons_h ico7h"></span>
                            </a>
                        </div>
                    </div>
                    <div class="row copyright">
                        <div class="span12">
                            © 2013 Clean Canvas. All rights reserved. Theme by Detail Canvas.
                        </div>
                    </div>
                </div>            
            </div>
        </div>
    </footer>

  

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

