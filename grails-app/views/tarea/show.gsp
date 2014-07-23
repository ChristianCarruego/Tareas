
<%@ page import="edu.unlam.Tarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarea.label', default: 'Tarea')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<!-- Main bar -->
        <div class="mainbar">
            <!-- Page heading -->
            <div class="page-head">
              	<h2 class="pull-left"><i class="fa fa-list"></i> Tareas</h2>
               <!-- Breadcrumb -->
               <div class="bread-crumb pull-right">
                     <i class="fa fa-list"></i> Home
                     <!-- Divider -->
                     <span class="divider">/</span> 
                     <a href="#" class="bread-current">Tareas</a>
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
                                        Tareas
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
									<a href="#show-tarea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
									-->
									<div class="nav" role="navigation">
										<ul>
											<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
											<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
											<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
										</ul>
									</div>
									<div id="show-tarea" class="content scaffold-show" role="main">
										<h1><g:message code="default.show.label" args="[entityName]" /></h1>
										<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
										</g:if>
										<ul class="property-list tarea">
										
											<g:if test="${tareaInstance?.resumen}">
											<li class="fieldcontain">
												<span id="resumen-label" class="property-label"><g:message code="tarea.resumen.label" default="Resumen" /></span>
												
													<span class="property-value" aria-labelledby="resumen-label"><g:fieldValue bean="${tareaInstance}" field="resumen"/></span>
												
											</li>
											</g:if>
										
											<g:if test="${tareaInstance?.detalle}">
											<li class="fieldcontain">
												<span id="detalle-label" class="property-label"><g:message code="tarea.detalle.label" default="Detalle" /></span>
												
													<span class="property-value" aria-labelledby="detalle-label"><g:fieldValue bean="${tareaInstance}" field="detalle"/></span>
												
											</li>
											</g:if>
										
											<g:if test="${tareaInstance?.fechaInicio}">
											<li class="fieldcontain">
												<span id="fechaInicio-label" class="property-label"><g:message code="tarea.fechaInicio.label" default="Fecha Inicio" /></span>
												
													<span class="property-value" aria-labelledby="fechaInicio-label"><g:formatDate date="${tareaInstance?.fechaInicio}" /></span>
												
											</li>
											</g:if>
										
											<g:if test="${tareaInstance?.empresa}">
											<li class="fieldcontain">
												<span id="empresa-label" class="property-label"><g:message code="tarea.empresa.label" default="Empresa" /></span>
												
													<span class="property-value" aria-labelledby="empresa-label"><g:link controller="empresa" action="show" id="${tareaInstance?.empresa?.id}">${tareaInstance?.empresa?.nombreEmpresa}</g:link></span>
												
											</li>
											</g:if>
										
											<g:if test="${tareaInstance?.estado}">
											<li class="fieldcontain">
												<span id="estado-label" class="property-label"><g:message code="tarea.estado.label" default="Estado" /></span>
												
													<span class="property-value" aria-labelledby="estado-label"><g:link controller="estadoTarea" action="show" id="${tareaInstance?.estado?.id}">${tareaInstance?.estado?.Descripcion}</g:link></span>
												
											</li>
											</g:if>
										
											<g:if test="${tareaInstance?.fechaFinalizado}">
											<li class="fieldcontain">
												<span id="fechaFinalizado-label" class="property-label"><g:message code="tarea.fechaFinalizado.label" default="Fecha Finalizado" /></span>
												
													<span class="property-value" aria-labelledby="fechaFinalizado-label"><g:formatDate date="${tareaInstance?.fechaFinalizado}" /></span>
												
											</li>
											</g:if>
										
											<g:if test="${tareaInstance?.registroTrabajo}">
											<li class="fieldcontain">
												<span id="registroTrabajo-label" class="property-label"><g:message code="tarea.registroTrabajo.label" default="Registro Trabajo" /></span>
												
													<span class="property-value" aria-labelledby="registroTrabajo-label"><g:fieldValue bean="${tareaInstance}" field="registroTrabajo"/></span>
												
											</li>
											</g:if>
										
											<g:if test="${tareaInstance?.tipoTarea}">
											<li class="fieldcontain">
												<span id="tipoTarea-label" class="property-label"><g:message code="tarea.tipoTarea.label" default="Tipo Tarea" /></span>
												
													<span class="property-value" aria-labelledby="tipoTarea-label"><g:link controller="tipoTarea" action="show" id="${tareaInstance?.tipoTarea?.id}">${tareaInstance?.tipoTarea?.Descripcion}</g:link></span>
												
											</li>
											</g:if>
										
											<g:if test="${tareaInstance?.usuario}">
											<li class="fieldcontain">
												<span id="usuario-label" class="property-label"><g:message code="tarea.usuario.label" default="Usuario" /></span>
												
													<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuario" action="show" id="${tareaInstance?.usuario?.id}">${tareaInstance?.usuario?.username}</g:link></span>
												
											</li>
											</g:if>
										
										</ul>
										<g:form url="[resource:tareaInstance, action:'delete']" method="DELETE">
											<fieldset class="buttons">
												<g:link class="edit" action="edit" resource="${tareaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
