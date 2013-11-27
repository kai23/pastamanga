<!DOCTYPE html>
<html>
<head>
	
	<meta name="layout" content="main" />
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
</head>

<body style="padding-top: 0px;">
    <!-- Sign In Option 1 -->
    <div id="sign_in1">
        <div class="container">
            <div class="row">
                <div class="span12 header">
                    <h4>Vous connecter à votre compte</h4>
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
                    <form action='${postUrl}' method='POST' role="form" autocomplete='off' class="col-xs-4">
                    <div class='fheader'><g:message code="springSecurity.login.header"/></div>
                    	<p class="help-block">
							<g:if test='${flash.message}'>
								<div class='login_message'>${flash.message}</div>
							</g:if>	
						</p>
                        <input type='text' placeholder="Username" name='j_username' id='username'/>
                        <input type='password' placeholder="Password" name='j_password' id='password'/>
                        <input type='submit' id="submit" class="btn btn-default" value='${message(code: "springSecurity.login.button")}'/>
                    </form>
                </div>

                <div class="span12 proof">
                    <div class="span5 remember">
                        <label class="checkbox">
                            <input type='checkbox' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/> Remember me
                        </label>
                        <a href="reset.html">Forgot password?</a>
                    </div>

                    <div class="span3 dosnt">
                        <span>Don’t have an account?</span>
                        <a href="sign-up.html">Sign up</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</html>
