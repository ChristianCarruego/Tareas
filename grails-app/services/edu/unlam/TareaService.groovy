package edu.unlam

import grails.transaction.Transactional
import grails.plugin.springsecurity.*

@Transactional
class TareaService {
	
	def springSecurityService

	
	def listarTareasDelUsuario(){
		def usuarioLogueado = Usuario.findAllById(springSecurityService.principal.id)
		if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')){
			def listaDeTareasDelUsuario = Tarea.list()
		}else if(SpringSecurityUtils.ifAllGranted('ROLE_EMPRESA')){
			def listaDeTareasDelUsuario = Tarea.findAllByEmpresa(usuarioLogueado.empresa)
		}
		else{
			def listaDeTareasDelUsuario = Tarea.findAllByUsuario(usuarioLogueado)
		}
		
	}
	
	def listarUsuariosSegunEmpresa(){
		def usuarioLogueado = Usuario.findById(springSecurityService.principal.id)
		if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')){
			def listaDeUsuario = Usuario.list()
		}else{
			def listaDeUsuariosXEmpresa = Usuario.findAllByEmpresa(usuarioLogueado.empresa)
		}
	}
}
