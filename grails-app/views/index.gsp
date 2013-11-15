<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<r:require module="jquery-ui" />
</head>
<body>
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
          <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img alt="First slide" src="http://cdn.betaseries.com/betaseries/images/fonds/show/952_1362570306.jpg" style="width:100%;">
            <div class="carousel-caption">
			    <h3>Fairy Tail</h3>
			    <p>Chaud Chaud !</p>
			 </div>
          </div>
          <div class="item">
            <img alt="Second slide" src="http://cdn.betaseries.com/betaseries/images/fonds/show/571_873811.jpg" style="width:100%;">
             <div class="carousel-caption">
			    <h3>One piece</h3>
			    <p>Chaud Chaud !</p>
			 </div>
          </div>
          <div class="item">
            <img alt="Third slide" src="http://cdn.betaseries.com/betaseries/images/fonds/show/568_1372708158.jpg" style="width:100%;">
            <div class="carousel-caption">
			    <h3>Bleach</h3>
			    <p>Chaud Chaud !</p>
			 </div>
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>

      <script>
      $(function() {
	var myArr = [];
	$.ajax({
		type: "GET",
		url: "animes.json",
		dataType: 'json',
		async: false,
		success: parseJson,
		complete: setupAC
	});

	function parseJson(json) {
		//find every query value
		$(json.animetitles).each(function(index, el) {
			$(el.anime).each(function(index2, el2) {
				$(el2.title).each(function(i3, el3) {
					if (el3.lang == "fr" && el3.type == "official")
						myArr.push(el3.text);
				});
			});
		});

	}

	function setupAC() {
		$("input#search_input").autocomplete({
			source: function(request, response) {
				var term = $.ui.autocomplete.escapeRegex(request.term);
				var matcher = new RegExp("" + term, "i");
				response($.grep(myArr, function(item) {
					return matcher.test(item);
				}));
			},
			minLength: 1,
			select: function(event, ui) {
				$("#search_input").val(ui.item.value);
				$("#search_anime").submit();
			}
		});
	}
});
      </script>
</body>
</html>
