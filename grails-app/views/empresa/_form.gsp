<%@ page import="edu.unlam.Empresa" %>



<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'nombreEmpresa', 'error')} required">
	<label for="nombreEmpresa">
		<g:message code="empresa.nombreEmpresa.label" default="Nombre Empresa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreEmpresa" required="" value="${empresaInstance?.nombreEmpresa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'tarea', 'error')} ">
	<label for="tarea">
		<g:message code="empresa.tarea.label" default="Tarea" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empresaInstance?.tarea?}" var="t">
    <li><g:link controller="tarea" action="show" id="${t.id}">${t?.resumen}</g:link></li>
</g:each>
<li class="add">
<g:link controller="tarea" action="create" params="['empresa.id': empresaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'tarea.label', default: 'Tarea')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: empresaInstance, field: 'usuario', 'error')} ">
	<label for="usuario">
		<g:message code="empresa.usuario.label" default="Usuario" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${empresaInstance?.usuario?}" var="u">
    <li><g:link controller="usuario" action="show" id="${u.id}">${u?.username}</g:link></li>
</g:each>
<li class="add">
<g:link controller="usuario" action="create" params="['empresa.id': empresaInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'usuario.label', default: 'Usuario')])}</g:link>
</li>
</ul>


</div>

