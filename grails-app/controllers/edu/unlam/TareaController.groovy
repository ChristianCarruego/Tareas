package edu.unlam



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
@Secured(['ROLE_ADMIN','ROLE_EMPRESA','ROLE_USER'])
@Transactional(readOnly = true)
class TareaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
	
	def TareaService
	def springSecurityService
	
	def index() {
		def tareas = TareaService.listarTareasDelUsuario()
        respond tareas, model:[tareaInstanceCount: Tarea.count()]
	}
	
	def calendarioDeTareas(){
		def tareas = TareaService.listarTareasDelUsuario()
		respond tareas, model:[tareaInstanceCount: Tarea.count()]
		
	}

    def show(Tarea tareaInstance) {
        respond tareaInstance
    }

	@Secured(['ROLE_ADMIN','ROLE_EMPRESA'])
    def create() {
		def usuarioLogueado = Usuario.findById(springSecurityService.principal.id)
		//[view_data:usuarioLogueado.empresa.id]
		//respond new Tarea(params)
    	
		//respond bindData(new Tarea,params,[exclude])
		respond new Tarea(params), model:[usuario:usuarioLogueado]
	}

    @Transactional
    def save(Tarea tareaInstance) {
        if (tareaInstance == null) {
            notFound()
            return
        }

        if (tareaInstance.hasErrors()) {
            respond tareaInstance.errors, view:'create'
            return
        }

        tareaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tareaInstance.label', default: 'Tarea'), tareaInstance.id])
                redirect tareaInstance
            }
            '*' { respond tareaInstance, [status: CREATED] }
        }
    }

    def edit(Tarea tareaInstance) {
        respond tareaInstance
    }

    @Transactional
    def update(Tarea tareaInstance) {
        if (tareaInstance == null) {
            notFound()
            return
        }

        if (tareaInstance.hasErrors()) {
            respond tareaInstance.errors, view:'edit'
            return
        }

        tareaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Tarea.label', default: 'Tarea'), tareaInstance.id])
                redirect tareaInstance
            }
            '*'{ respond tareaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Tarea tareaInstance) {

        if (tareaInstance == null) {
            notFound()
            return
        }

        tareaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Tarea.label', default: 'Tarea'), tareaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tareaInstance.label', default: 'Tarea'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
