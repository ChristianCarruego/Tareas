package edu.unlam

class Empresa {

	String nombreEmpresa
	
		static hasMany = [usuario: Usuario, tarea: Tarea] // la traduccion seria "Empresa tiene muchas tareas del tipo Tarea"
		
		static constraints = {
			
			nombreEmpresa blank: false
	
	}
}
