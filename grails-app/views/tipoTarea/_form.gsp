<%@ page import="edu.unlam.TipoTarea" %>



<div class="fieldcontain ${hasErrors(bean: tipoTareaInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="tipoTarea.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textField name="descripcion" value="${tipoTareaInstance?.descripcion}"/>

</div>

