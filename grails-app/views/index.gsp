<!doctype html>
<html>
<head>
<meta name="layout" content="main" />
<r:require modules="bootstrap" />
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
          	  url: "anime-titles.xml",
          	  dataType: 'jsonp',
          	  async: false,         	  
          	  success: function( xml ) {
				console.log("hey !");
         	 }
          	})
      });
});
</script>
</body>
</html>
