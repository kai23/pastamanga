<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<r:require module="jquery-ui" />
</head>
<body>
	
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
