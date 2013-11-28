<!DOCTYPE html>
<html>
<head>
	
	<meta name="layout" content="main" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>
<body>
	<!-- Sign In Option 1 -->
	<div id="sign_up1">
		<div class="container">
			<div class="row">
				<div class="span12 header">
					<h4>Création d'un compte</h4>
					<p>
						There are many variations of passages of Lorem alteration in some form  injected humour these randomised words .</p>

						<div class="span4 social">
							<a href="#" class="circle facebook">
								<img src="/pastamanga/img/face.png" alt="">
							</a>
							<a href="#" class="circle twitter">
								<img src="/pastamanga/img/twt.png" alt="">
							</a>
							<a href="#" class="circle gplus">
								<img src="/pastamanga/img/gplus.png" alt="">
							</a>
						</div>
					</div>

					<div class="span3 division">
						<div class="line l"></div>
						<span>or</span>
						<div class="line r"></div>
					</div>

					<div class="span12 footer">
						<div id="create-user" class="content scaffold-create" role="main">
							<form action="/pastamanga/user/save" method="post" class="form-horizontal">
								<fieldset class="form">
									<input type="text" name="username" class="form-control" required="" value="" placeholder="Username"id="username">
									<input type="text" name="password" class="form-control" required="" value="" placeholder="Password" id="password">
									<input type="submit" name="create" class="btn btn-default" value="Create" id="create">
							</form>					
						</div>
					</div>
					<div class="span12 dosnt">
						<span>Already have an account?</span>
						<a href="sign-in.html">Sign in</a>
					</div>
				</div>
			</div>
		</div>
	</body>
	</html>