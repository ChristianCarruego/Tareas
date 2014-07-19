<sec:ifNotLoggedIn>
<script>
	top.location="login/index";
</script>
</sec:ifNotLoggedIn>
<sec:ifLoggedIn>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- Mac Admin -->
		<!-- Stylesheets -->
        
        <link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'bootstrap.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'font-awesome.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'jquery-ui.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'fullcalendar.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'prettyPhoto.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'rateit.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'bootstrap-datetimepicker.min.css')}" type="text/css"> 
		<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'jquery.cleditor.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'jquery.dataTables.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'jquery.onoff.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'style.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'macAdmin/css', file: 'widgets.css')}" type="text/css">

		<script src='${resource(dir: 'macAdmin/js', file: 'respond.min.js')}'></script>
		<!--[if lt IE 9]>
		<script src='${resource(dir: 'macAdmin/js', file: 'html5shiv.js')}'></script>
		<![endif]-->
		<!-- Favicon -->
		<link rel="shortcut icon" href='${resource(dir: 'macAdmin/img/favicon', file: 'favicon.png')}'>
		
		<g:layoutHead/>
		
		
		<g:javascript library="application"/>		
		<r:layoutResources />
	</head>
	<body>
		<div class="navbar navbar-fixed-top bs-docs-nav" role="banner">
           <div class="conjtainer">
                 <!-- Menu button for smallar screens -->
                 <div class="navbar-header">
                     <button class="navbar-toggle btn-navbar" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
                     	<span>Menu</span>
                     </button>
                     <!-- Site name for smallar screens -->
                 </div>
                 
                 <!-- Navigation starts -->
                 <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">         
                     <!-- Links -->
                     <ul class="nav navbar-nav pull-right">
                         <li class="dropdown pull-right">            
                             <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                             <i class="fa fa-user"></i> <sec:loggedInUserInfo field="username"/><b class="caret"></b>              
                             </a>
                             <!-- Dropdown menu -->
                             <ul class="dropdown-menu">
                                 <li><g:link controller='logout'><i class="fa fa-sign-out"></i> Desconectarse</g:link></li>
                             </ul>
                         </li>
                     </ul>
                 </nav>
             </div>
        </div>
		<header>
             <div class="container">
                 <div class="row">
                     <!-- Logo section -->
                     <div class="col-md-4">
                         <!-- Logo. -->
                         <div class="logo">
                             <h1><a href="#"><span class="bold">Tareas</span></a></h1>
                             <p class="meta">TUS TAREAS</p>
                         </div>
                         <!-- Logo ends -->
                     </div>
                     <!-- Button section -->
                     <div class="col-md-4" style="float: right; text-align: right; width: 165px;">
                         
                     </div>
                 </div>
             </div>
         </header>
         <!-- Main content starts -->
         <div class="content">
             <!-- Sidebar -->
             <div class="sidebar">
                 <div class="sidebar-dropdown"><a href="#">Navegación</a></div>
                 <!--- Sidebar navigation -->
                 <!-- If the main navigation has sub navigation, then add the class "has_sub" to "li" of main navigation. -->
                 <ul id="nav">
                     <!-- Main menu with font awesome icon -->
                    <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA,ROLE_USER">
                     <li>
                         <a href="/TareasDrop/"><i class="fa fa-home"></i> Inicio</a>
                     </li>
                     </sec:ifAnyGranted>
                     <sec:ifAnyGranted roles="ROLE_ADMIN">
                      <li>
                         <a href="/TareasDrop/Empresa"><i class="fa fa-list"></i> Empresa</a>
                     </li>
                     </sec:ifAnyGranted>
                     <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA">
                      <li>
                         <a href="/TareasDrop/estadoTarea"><i class="fa fa-list"></i> Estado Tarea</a>
                     </li>
                     </sec:ifAnyGranted>
                     <sec:ifAnyGranted roles="ROLE_ADMIN">
                      <li>
                         <a href="/TareasDrop/rol"><i class="fa fa-list"></i> Rol</a>
                     </li>
                     </sec:ifAnyGranted>
                     <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA,ROLE_USER">
                      <li>
                         <a href="/TareasDrop/tarea"><i class="fa fa-list"></i> Tarea</a>
                     </li>
                     </sec:ifAnyGranted>
                     <sec:ifAnyGranted roles="ROLE_ADMIN">
                      <li>
                         <a href="/TareasDrop/tipoTarea"><i class="fa fa-list"></i> Tipo Tarea</a>
                     </li>
                     </sec:ifAnyGranted>
                     <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA">
                      <li>
                         <a href="/TareasDrop/usuario"><i class="fa fa-list"></i> Usuario</a>
                     </li>
                     </sec:ifAnyGranted>
                     <!-- 
                     <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li><g:link controller="${c.logicalPropertyName}"><i class="fa fa-list"></i>${c.name}</g:link></li>
					 </g:each>
				     -->
                 </ul>
             </div>
             <!-- Sidebar ends -->
             
             <g:layoutBody/>
             
         </div>
		
		
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<r:layoutResources />
		
		
		
		
		<!-- JS -->
		<script src='${resource(dir: 'macAdmin/js', file: 'jquery.js')}'></script>
		<script src='${resource(dir: 'macAdmin/js', file: 'bootstrap.min.js')}'></script>
		<script src='${resource(dir: 'macAdmin/js', file: 'jquery-ui.min.js')}'></script>
		<script src='${resource(dir: 'macAdmin/js', file: 'fullcalendar.min.js')}'></script>
		<script src='${resource(dir: 'macAdmin/js', file: 'jquery.rateit.min.js')}'></script>
		<script src='${resource(dir: 'macAdmin/js', file: 'jquery.prettyPhoto.js')}'></script>
		<script src='${resource(dir: 'macAdmin/js', file: 'jquery.slimscroll.min.js')}'></script>
		<script src='${resource(dir: 'macAdmin/js', file: 'jquery.dataTables.min.js')}'></script>
	
	
	
		
		
        
	</body>
</html>
</sec:ifLoggedIn>