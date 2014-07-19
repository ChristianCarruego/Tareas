
<%@ page import="edu.unlam.Tarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarea.label', default: 'Tarea')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
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
									<a href="#list-tarea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
									-->
									<div class="nav" role="navigation">
										<ul>
											<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
											<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
											<li><g:link class="calendarioDeTareas" action="calendarioDeTareas">Calendario de Tareas del usuario</g:link></li>
										</ul>
									</div>
									<div id="list-tarea" class="content scaffold-list" role="main">
										<h1><g:message code="default.list.label" args="[entityName]" /></h1>
										<g:if test="${flash.message}">
											<div class="message" role="status">${flash.message}</div>
										</g:if>
										<table style="width:100%;">
										<thead>
												<tr>
												
													<g:sortableColumn property="resumen" title="${message(code: 'tarea.resumen.label', default: 'Resumen')}" />
												
													<g:sortableColumn property="detalle" title="${message(code: 'tarea.detalle.label', default: 'Detalle')}" />
												
													<g:sortableColumn property="fechaInicio" title="${message(code: 'tarea.fechaInicio.label', default: 'Fecha Inicio')}" />
												
													<th><g:message code="tarea.empresa.label" default="Empresa" /></th>
												
													<th><g:message code="tarea.estado.label" default="Estado" /></th>
												
													<g:sortableColumn property="fechaFinalizado" title="${message(code: 'tarea.fechaFinalizado.label', default: 'Fecha Finalizado')}" />
												
												</tr>
											</thead>
											<tbody>
											<g:each in="${tareaInstanceList}" status="i" var="tareaInstance">
												<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
												
													<td><g:link action="show" id="${tareaInstance.id}">${fieldValue(bean: tareaInstance, field: "resumen")}</g:link></td>
												
													<td>${fieldValue(bean: tareaInstance, field: "detalle")}</td>
												
													<td><g:formatDate date="${tareaInstance.fechaInicio}" /></td>
												
													<td>${fieldValue(bean: tareaInstance, field: "empresa.nombreEmpresa")}</td>
												
													<td>${fieldValue(bean: tareaInstance, field: "estado.Descripcion")}</td>
												
													<td><g:formatDate date="${tareaInstance.fechaFinalizado}" /></td>
												
												</tr>
											</g:each>
											</tbody>
										</table>
										<div class="pagination">
											<g:paginate total="${tareaInstanceCount ?: 0}" />
										</div>
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
