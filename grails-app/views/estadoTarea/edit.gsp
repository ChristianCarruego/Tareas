<%@ page import="edu.unlam.EstadoTarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'estadoTarea.label', default: 'EstadoTarea')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
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
										<a href="#edit-estadoTarea" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
										-->
										<div class="nav" role="navigation">
											<ul>
												<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
												<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
												<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
											</ul>
										</div>
										<div id="edit-estadoTarea" class="content scaffold-edit" role="main">
											<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
											<g:if test="${flash.message}">
											<div class="message" role="status">${flash.message}</div>
											</g:if>
											<g:hasErrors bean="${estadoTareaInstance}">
											<ul class="errors" role="alert">
												<g:eachError bean="${estadoTareaInstance}" var="error">
												<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
												</g:eachError>
											</ul>
											</g:hasErrors>
											<g:form url="[resource:estadoTareaInstance, action:'update']" method="PUT" >
												<g:hiddenField name="version" value="${estadoTareaInstance?.version}" />
												<fieldset class="form">
													<g:render template="form"/>
												</fieldset>
												<fieldset class="buttons">
													<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
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
