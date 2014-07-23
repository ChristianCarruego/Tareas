<%@ page import="edu.unlam.EstadoTarea" %>



<div class="fieldcontain ${hasErrors(bean: estadoTareaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion" >
		<g:message code="estadoTarea.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${estadoTareaInstance?.descripcion}"/>

</div>

