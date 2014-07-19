
<%@ page import="edu.unlam.Tarea" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'tarea.label', default: 'Tarea')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		
		<!-- Plugin Full Calendar -->
		<link rel="stylesheet" href="${resource(dir: 'pluginFullCalendar/lib/cupertino', file: 'jquery-ui.min.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'pluginFullCalendar', file: 'fullcalendar.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'pluginFullCalendar', file: 'fullcalendar.print.css')}" type="text/css">
		
		<script src='${resource(dir: 'pluginFullCalendar/lib', file: 'moment.min.js')}'></script>
		<script src='${resource(dir: 'pluginFullCalendar/lib', file: 'jquery.min.js')}'></script>
		<script src='${resource(dir: 'pluginFullCalendar/lib', file: 'jquery-ui.custom.min.js')}'></script>
		<script src='${resource(dir: 'pluginFullCalendar', file: 'fullcalendar.min.js')}'></script>
		<script src='${resource(dir: 'pluginFullCalendar', file: 'lang-all.js')}'></script>
		
		<script>

			$(document).ready(function() {
				$('#calendar').fullCalendar({
					header: {
						left: 'prev,next today',
						center: 'title',
						right: 'month,agendaWeek,agendaDay'
					},
					defaultDate: '2014-06-12',
					lang: 'es',
					buttonIcons: false, // show the prev/next text
					weekNumbers: true,
					editable: true,
					events: [
						<g:each in="${tareaInstanceList}" status="i" var="tareaInstance">
						{
							title: '${fieldValue(bean: tareaInstance, field: "detalle")}',
							start: '${tareaInstance.fechaInicio}',
							end: '${tareaInstance.fechaFinalizado}',
							url: 'edit/${tareaInstance.id}'
							
						},
						</g:each>
					],
					eventClick: function(event) {
				        if (event.url) {
				            window.open(event.url);
				            return false;
				        }
				    }
				});
			});
		
		</script>
		<style>
			#calendar {
				width: 800px;
				margin: 40px auto;
			}
		
			label{width:150px;}
		</style>
		
	</head>
	<body>
		<!-- Main bar -->
        <div class="mainbar">
            <!-- Page heading -->
            <div class="page-head">
              	<h2 class="pull-left"><i class="fa fa-list"></i> Tareas</h2>
               <!-- Breadcrumb -->
               <div class="bread-crumb pull-right">
                     <i class="fa fa-home"></i> Tarea
                     <!-- Divider -->
                     <span class="divider">/</span> 
                     <a href="#" class="bread-current">Tarea</a>
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
										<!--  Contenido  -->
										<div id='calendar'></div>
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
