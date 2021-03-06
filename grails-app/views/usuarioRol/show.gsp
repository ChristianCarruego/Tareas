
<%@ page import="edu.unlam.UsuarioRol" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuarioRol.label', default: 'UsuarioRol')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<!-- Main bar -->
        <div class="mainbar">
            <!-- Page heading -->
            <div class="page-head">
              	<h2 class="pull-left"><i class="fa fa-list"></i> Rol Por Usuario</h2>
               <!-- Breadcrumb -->
               <div class="bread-crumb pull-right">
                     <i class="fa fa-list"></i> Home
                     <!-- Divider -->
                     <span class="divider">/</span> 
                     <a href="#" class="bread-current">Rol Por Usuario</a>
               </div>
               <div class="clearfix"></div>
            </div>
            
            <!-- Matter -->
            <div class="matter">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="widget">
                                <div class="widget-head">
                                    <div class="pull-left">
                                        Rol Por Usuario
                                    </div>
                                    <div class="widget-icons pull-right">
                                        <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a> 
                                        <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                    </div>  
                                    <div class="clearfix"></div>
                                </div>
                                <div class="widget-content">
                                    <div class="padd">
										<!-- 
										<a href="#show-usuarioRol" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
										-->
										<div class="nav" role="navigation">
											<ul>
												<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
												<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
												<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
											</ul>
										</div>
										<div id="show-usuarioRol" class="content scaffold-show" role="main">
											<h1><g:message code="default.show.label" args="[entityName]" /></h1>
											<g:if test="${flash.message}">
											<div class="message" role="status">${flash.message}</div>
											</g:if>
											<ol class="property-list usuarioRol">
											
												<g:if test="${usuarioRolInstance?.rol}">
												<li class="fieldcontain">
													<span id="rol-label" class="property-label"><g:message code="usuarioRol.rol.label" default="Rol" /></span>
													
														<span class="property-value" aria-labelledby="rol-label"><g:link controller="rol" action="show" id="${usuarioRolInstance?.rol?.id}">${usuarioRolInstance?.rol?.encodeAsHTML()}</g:link></span>
													
												</li>
												</g:if>
											
												<g:if test="${usuarioRolInstance?.usuario}">
												<li class="fieldcontain">
													<span id="usuario-label" class="property-label"><g:message code="usuarioRol.usuario.label" default="Usuario" /></span>
													
														<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${usuarioRolInstance?.usuario?.id}">${usuarioRolInstance?.usuario?.encodeAsHTML()}</g:link></span>
													
												</li>
												</g:if>
											
											</ol>
											<g:form url="[resource:usuarioRolInstance, action:'delete']" method="DELETE">
												<fieldset class="buttons">
													<g:link class="edit" action="edit" resource="${usuarioRolInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
													<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
												</fieldset>
											</g:form>
										</div>
									</div>
								</div>
                            </div>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
	</body>
</html>
