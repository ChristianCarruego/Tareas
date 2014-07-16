
<%@ page import="edu.unlam.Empresa" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'empresa.label', default: 'Empresa')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<!-- Main bar -->
        <div class="mainbar">
            <!-- Page heading -->
            <div class="page-head">
              	<h2 class="pull-left"><i class="fa fa-list"></i>Empresas</h2>
               <!-- Breadcrumb -->
               <div class="bread-crumb pull-right">
                     <i class="fa fa-list"></i> Home
                     <!-- Divider -->
                     <span class="divider">/</span> 
                     <a href="#" class="bread-current">Empresas</a>
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
                                        Empresas
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
									<a href="#show-empresa" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
									-->
									<div class="nav" role="navigation">
										<ul>
											<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
											<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
											<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
										</ul>
									</div>
									<div id="show-empresa" class="content scaffold-show" role="main">
										<h1><g:message code="default.show.label" args="[entityName]" /></h1>
										<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
										</g:if>
										<ol class="property-list empresa">
										
											<g:if test="${empresaInstance?.nombreEmpresa}">
											<li class="fieldcontain">
												<span id="nombreEmpresa-label" class="property-label"><g:message code="empresa.nombreEmpresa.label" default="Nombre Empresa" /></span>
												
													<span class="property-value" aria-labelledby="nombreEmpresa-label"><g:fieldValue bean="${empresaInstance}" field="nombreEmpresa"/></span>
												
											</li>
											</g:if>
										
											<g:if test="${empresaInstance?.tarea}">
											<li class="fieldcontain">
												<span id="tarea-label" class="property-label"><g:message code="empresa.tarea.label" default="Tarea" /></span>
												
													<g:each in="${empresaInstance.tarea}" var="t">
													<span class="property-value" aria-labelledby="tarea-label"><g:link controller="tarea" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
													</g:each>
												
											</li>
											</g:if>
										
											<g:if test="${empresaInstance?.usuario}">
											<li class="fieldcontain">
												<span id="usuario-label" class="property-label"><g:message code="empresa.usuario.label" default="Usuario" /></span>
												
													<g:each in="${empresaInstance.usuario}" var="u">
													<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
													</g:each>
												
											</li>
											</g:if>
										
										</ol>
										<g:form url="[resource:empresaInstance, action:'delete']" method="DELETE">
											<fieldset class="buttons">
												<g:link class="edit" action="edit" resource="${empresaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
	</body>
</html>
