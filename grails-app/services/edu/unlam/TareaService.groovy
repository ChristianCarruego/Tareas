package edu.unlam

import grails.transaction.Transactional

@Transactional
class TareaService {
	
	def springSecurityService

	def listarTareasDelUsuario(){
		def usuarioLogueado = Usuario.findAllById(springSecurityService.principal.id)
		def listaDeTareasDelUsuario = Tarea.findAllByUsuario(usuarioLogueado)
		
	}
}
