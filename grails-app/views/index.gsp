<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<r:require module="jquery-ui" />
</head>
<body>
	<script>
	var myArr = [];
	
		$(function() {
			$.ajax({
					type : "GET",
					url : "animes.json",
					dataType : 'json',
					async : false,
					success : parseJson,
					complete: setupAC
			});
			function parseJson(json) {
				//find every query value
				$(json.animetitles).each(function(index, el) {
					$(el.anime).each(function(index2,el2){
						$(el2.title).each(function(i3,el3) {
							if(el3.lang == "fr" && el3.type=="official")
								myArr.push(el3.text)
						});
					})
				});
				
			}
			function setupAC() {
			    $("input#search_input").autocomplete({
			        source: function( request, response ) {
				        var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex( request.term ), "i" );
				        response( $.grep( myArr, function( item ){
				            return matcher.test( item );
				        }) );
				    },
				    minLength: 3,
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
