<html>
<head>
	<title><g:message code="springSecurity.login.title"/></title>
	
	<!-- Stylesheets -->
	<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'bootstrap.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'font-awesome.min.css')}" type="text/css">
	<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'style.css')}" type="text/css">
	
	
	<script src='${resource(dir: 'macAdmin/js', file: 'respond.min.js')}'></script>
		
	
	<!--[if lt IE 9]>
	<script src='${resource(dir: 'macAdmin/js', file: 'html5shiv.js')}'></script>
	<![endif]-->
	
	<!-- Favicon -->
	<link rel="shortcut icon" href='${resource(dir: 'macAdmin/img/favicon', file: 'favicon.png')}'>
	

</head>

<body>
	<!-- Form area -->
	<div class="admin-form">
	  <div class="container">
	
	    <div class="row">
	      <div class="col-md-12">
	        <!-- Widget starts -->
	            <div class="widget worange">
	              <!-- Widget head -->
	              <div class="widget-head">
	                <i class="fa fa-lock"></i> Loguearse 
	              </div>
	
	              <div class="widget-content">
	                <div class="padd">
	                  <!-- Login form -->
	                  <form action='${postUrl}' method='POST' id='loginForm' class='form-horizontal' autocomplete='off'>
	                    <!-- Email -->
	                    <div class="form-group">
	                      <label for='username' class="control-label col-lg-3"><g:message code="springSecurity.login.username.label"/>:</label>
	                      <div class="col-lg-9">
	                        <input type='text' class='form-control' name='j_username' id='username' placeholder="Username"/>
	                      </div>
	                    </div>
	                    <!-- Password -->
	                    <div class="form-group">
	                      <label for='password' class="control-label col-lg-3"><g:message code="springSecurity.login.password.label"/>:</label>
	                      <div class="col-lg-9">
	                        <input type='password' class='form-control' name='j_password' id='password' placeholder="Password"/>
	                      </div>
	                    </div>
	                    <!-- Remember me checkbox and sign in button -->
	                    <div class="form-group">
						<div class="col-lg-9 col-lg-offset-3">
	                      <div class="checkbox">
	                        <label>
	                          <input type='checkbox' class='chk' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/> Recordarme
	                        </label>
							</div>
						</div>
						</div>
	                        <div class="col-lg-9 col-lg-offset-3">
								<input type='submit' class="btn btn-default" id="submit" value='${message(code: "springSecurity.login.button")}'/>
								<input type="reset" class="btn btn-default" />
							</div>
	                    <br />
	                  </form>
					  
					</div>
	                </div>
	              
	            </div>  
	      </div>
	    </div>
	  </div> 
	</div>
	<script type='text/javascript'>
	<!--
	(function() {
		document.forms['loginForm'].elements['j_username'].focus();
	})();
	// -->
	</script>
			
	
	<!-- JS -->
	
	<script src='${resource(dir: 'macAdmin/js', file: 'jquery.js')}'></script>
	<script src='${resource(dir: 'macAdmin/js', file: 'bootstrap.min.js')}'></script>
	
</body>
</html>
