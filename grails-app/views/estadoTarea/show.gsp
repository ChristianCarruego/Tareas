
<%@ page import="edu.unlam.EstadoTarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estadoTarea.label', default: 'EstadoTarea')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
			<!-- Main bar -->
        <div class="mainbar">
            <!-- Page heading -->
            <div class="page-head">
              	<h2 class="pull-left"><i class="fa fa-list"></i>Estado de Tareas</h2>
               <!-- Breadcrumb -->
               <div class="bread-crumb pull-right">
                     <i class="fa fa-list"></i> Home
                     <!-- Divider -->
                     <span class="divider">/</span> 
                     <a href="#" class="bread-current">Estado de Tareas</a>
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
                                        Estado de Tareas
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
									<a href="#show-estadoTarea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
									-->
									<div class="nav" role="navigation">
										<ul>
											<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
											<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
											<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
										</ul>
									</div>
									<div id="show-estadoTarea" class="content scaffold-show" role="main">
										<h1><g:message code="default.show.label" args="[entityName]" /></h1>
										<g:if test="${flash.message}">
										<div class="message" role="status">${flash.message}</div>
										</g:if>
										<ol class="property-list estadoTarea">
										
											<g:if test="${estadoTareaInstance?.descripcion}">
											<li class="fieldcontain">
												<span id="descripcion-label" class="property-label"><g:message code="estadoTarea.descripcion.label" default="Descripcion" /></span>
												
													<span class="property-value" aria-labelledby="descripcion-label"><g:fieldValue bean="${estadoTareaInstance}" field="descripcion"/></span>
												
											</li>
											</g:if>
										
										</ol>
										<g:form url="[resource:estadoTareaInstance, action:'delete']" method="DELETE">
											<fieldset class="buttons">
												<g:link class="edit" action="edit" resource="${estadoTareaInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
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
