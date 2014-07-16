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
	                <i class="fa fa-lock"></i> Denegado 
	              </div>
	
	              <div class="widget-content">
	                <div class="padd">
	                  <div class='errors'><g:message code="springSecurity.denied.message" /></div>
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
