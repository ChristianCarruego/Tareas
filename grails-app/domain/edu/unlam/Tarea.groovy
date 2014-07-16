package edu.unlam

import java.util.Date;

class Tarea {
	
	String resumen
	String detalle
	Date fechaInicio
	Date fechaFinalizado
	String registroTrabajo
	EstadoTarea estado
	TipoTarea tipoTarea
	
	
	static belongsTo =  [usuario: Usuario, empresa: Empresa]
	
	static constraints = {
		
		resumen blank: false
		detalle blank: false
		fechaInicio nullable: false
		
	}
}
