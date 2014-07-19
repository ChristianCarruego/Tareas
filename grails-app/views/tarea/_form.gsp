<%@ page import="edu.unlam.Tarea" %>


<sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA">
	<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'resumen', 'error')} required">
		<label for="resumen">
			<g:message code="tarea.resumen.label" default="Resumen" />
			<span class="required-indicator">*</span>
		</label>
		<g:textField name="resumen" required="" value="${tareaInstance?.resumen}"/>
	
	</div>
</sec:ifAnyGranted>
<sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA">
<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'detalle', 'error')} required">
	<label for="detalle">
		<g:message code="tarea.detalle.label" default="Detalle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="detalle" required="" value="${tareaInstance?.detalle}"/>

</div>
</sec:ifAnyGranted>

<sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA">
	<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'fechaInicio', 'error')} required">
		<label for="fechaInicio">
			<g:message code="tarea.fechaInicio.label" default="Fecha Inicio" />
			<span class="required-indicator">*</span>
		</label>
		<g:datePicker name="fechaInicio" precision="day"  value="${tareaInstance?.fechaInicio}"  />
	
	</div>
</sec:ifAnyGranted>

<sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA">
<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'empresa', 'error')} required">
	<label for="empresa">
		<g:message code="tarea.empresa.label" default="Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="empresa" name="empresa.id" from="${edu.unlam.Empresa.list()}" optionKey="id" optionValue="nombreEmpresa" required="" value="${tareaInstance?.empresa?.id}" class="many-to-one"/>

</div>
</sec:ifAnyGranted>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'estado', 'error')} required">
	<label for="estado">
		<g:message code="tarea.estado.label" default="Estado" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="estado" name="estado.id" from="${edu.unlam.EstadoTarea.list()}" optionKey="id" optionValue="Descripcion" required="" value="${tareaInstance?.estado?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'fechaFinalizado', 'error')} required">
	<label for="fechaFinalizado">
		<g:message code="tarea.fechaFinalizado.label" default="Fecha Finalizado" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fechaFinalizado" precision="day"  value="${tareaInstance?.fechaFinalizado}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'registroTrabajo', 'error')} ">
	<label for="registroTrabajo">
		<g:message code="tarea.registroTrabajo.label" default="Registro Trabajo" />
		
	</label>
	<g:textField name="registroTrabajo" value="${tareaInstance?.registroTrabajo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'tipoTarea', 'error')} required">
	<label for="tipoTarea">
		<g:message code="tarea.tipoTarea.label" default="Tipo Tarea" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="tipoTarea" name="tipoTarea.id" from="${edu.unlam.TipoTarea.list()}" optionKey="id" optionValue="Descripcion" required="" value="${tareaInstance?.tipoTarea?.id}" class="many-to-one"/>

</div>

<sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_EMPRESA">
<div class="fieldcontain ${hasErrors(bean: tareaInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="tarea.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${edu.unlam.Usuario.list()}" optionKey="id" optionValue="username" required="" value="${tareaInstance?.usuario?.id}" class="many-to-one"/>

</div>
</sec:ifAnyGranted>

