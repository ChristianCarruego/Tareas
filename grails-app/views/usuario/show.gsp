
<%@ page import="edu.unlam.Usuario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'usuario.label', default: 'Usuario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<!-- Main bar -->
        <div class="mainbar">
            <!-- Page heading -->
            <div class="page-head">
              	<h2 class="pull-left"><i class="fa fa-list"></i> Usuarios</h2>
               <!-- Breadcrumb -->
               <div class="bread-crumb pull-right">
                     <i class="fa fa-list"></i> Home
                     <!-- Divider -->
                     <span class="divider">/</span> 
                     <a href="#" class="bread-current"> Usuarios</a>
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
                                         Usuarios
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
										<a href="#show-usuario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
										
										-->
										<div class="nav" role="navigation">
											<ul>
												<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
												<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
												<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
											</ul>
										</div>
										<div id="show-usuario" class="content scaffold-show" role="main">
											<h1><g:message code="default.show.label" args="[entityName]" /></h1>
											<g:if test="${flash.message}">
											<div class="message" role="status">${flash.message}</div>
											</g:if>
											<ol class="property-list usuario">
											
												<g:if test="${usuarioInstance?.username}">
												<li class="fieldcontain">
													<span id="username-label" class="property-label"><g:message code="usuario.username.label" default="Username" /></span>
													
														<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${usuarioInstance}" field="username"/></span>
													
												</li>
												</g:if>
											
												<g:if test="${usuarioInstance?.password}">
												<li class="fieldcontain">
													<span id="password-label" class="property-label"><g:message code="usuario.password.label" default="Password" /></span>
													
														<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${usuarioInstance}" field="password"/></span>
													
												</li>
												</g:if>
											
												<g:if test="${usuarioInstance?.accountExpired}">
												<li class="fieldcontain">
													<span id="accountExpired-label" class="property-label"><g:message code="usuario.accountExpired.label" default="Account Expired" /></span>
													
														<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${usuarioInstance?.accountExpired}" /></span>
													
												</li>
												</g:if>
											
												<g:if test="${usuarioInstance?.accountLocked}">
												<li class="fieldcontain">
													<span id="accountLocked-label" class="property-label"><g:message code="usuario.accountLocked.label" default="Account Locked" /></span>
													
														<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${usuarioInstance?.accountLocked}" /></span>
													
												</li>
												</g:if>
											
												<g:if test="${usuarioInstance?.empresa}">
												<li class="fieldcontain">
													<span id="empresa-label" class="property-label"><g:message code="usuario.empresa.label" default="Empresa" /></span>
													
														<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${usuarioInstance?.empresa?.id}">${usuarioInstance?.empresa?.encodeAsHTML()}</g:link></span>
													
												</li>
												</g:if>
											
												<g:if test="${usuarioInstance?.enabled}">
												<li class="fieldcontain">
													<span id="enabled-label" class="property-label"><g:message code="usuario.enabled.label" default="Enabled" /></span>
													
														<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${usuarioInstance?.enabled}" /></span>
													
												</li>
												</g:if>
											
												<g:if test="${usuarioInstance?.passwordExpired}">
												<li class="fieldcontain">
													<span id="passwordExpired-label" class="property-label"><g:message code="usuario.passwordExpired.label" default="Password Expired" /></span>
													
														<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${usuarioInstance?.passwordExpired}" /></span>
													
												</li>
												</g:if>
											
												<g:if test="${usuarioInstance?.tarea}">
												<li class="fieldcontain">
													<span id="tarea-label" class="property-label"><g:message code="usuario.tarea.label" default="Tarea" /></span>
													
														<g:each in="${usuarioInstance.tarea}" var="t">
														<span class="property-value" aria-labelledby="tarea-label"><g:link controller="tarea" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
														</g:each>
													
												</li>
												</g:if>
											
											</ol>
											<g:form url="[resource:usuarioInstance, action:'delete']" method="DELETE">
												<fieldset class="buttons">
													<g:link class="edit" action="edit" resource="${usuarioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
