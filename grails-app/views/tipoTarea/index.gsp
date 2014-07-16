
<%@ page import="edu.unlam.TipoTarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tipoTarea.label', default: 'TipoTarea')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<!-- Main bar -->
        <div class="mainbar">
            <!-- Page heading -->
            <div class="page-head">
              	<h2 class="pull-left"><i class="fa fa-list"></i> Tipo Tarea</h2>
               <!-- Breadcrumb -->
               <div class="bread-crumb pull-right">
                     <i class="fa fa-list"></i> Home
                     <!-- Divider -->
                     <span class="divider">/</span> 
                     <a href="#" class="bread-current"> Tipo Tarea</a>
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
                                         Tipo Tarea
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
										<a href="#list-tipoTarea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
										-->
										<div class="nav" role="navigation">
											<ul>
												<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
												<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
											</ul>
										</div>
										<div id="list-tipoTarea" class="content scaffold-list" role="main">
											<h1><g:message code="default.list.label" args="[entityName]" /></h1>
											<g:if test="${flash.message}">
												<div class="message" role="status">${flash.message}</div>
											</g:if>
											<table>
											<thead>
													<tr>
													
														<g:sortableColumn property="descripcion" title="${message(code: 'tipoTarea.descripcion.label', default: 'Descripcion')}" />
													
													</tr>
												</thead>
												<tbody>
												<g:each in="${tipoTareaInstanceList}" status="i" var="tipoTareaInstance">
													<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
													
														<td><g:link action="show" id="${tipoTareaInstance.id}">${fieldValue(bean: tipoTareaInstance, field: "descripcion")}</g:link></td>
													
													</tr>
												</g:each>
												</tbody>
											</table>
											<div class="pagination">
												<g:paginate total="${tipoTareaInstanceCount ?: 0}" />
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
