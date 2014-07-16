package edu.unlam



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class EstadoTareaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond EstadoTarea.list(params), model:[estadoTareaInstanceCount: EstadoTarea.count()]
    }

    def show(EstadoTarea estadoTareaInstance) {
        respond estadoTareaInstance
    }

    def create() {
        respond new EstadoTarea(params)
    }

    @Transactional
    def save(EstadoTarea estadoTareaInstance) {
        if (estadoTareaInstance == null) {
            notFound()
            return
        }

        if (estadoTareaInstance.hasErrors()) {
            respond estadoTareaInstance.errors, view:'create'
            return
        }

        estadoTareaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'estadoTareaInstance.label', default: 'EstadoTarea'), estadoTareaInstance.id])
                redirect estadoTareaInstance
            }
            '*' { respond estadoTareaInstance, [status: CREATED] }
        }
    }

    def edit(EstadoTarea estadoTareaInstance) {
        respond estadoTareaInstance
    }

    @Transactional
    def update(EstadoTarea estadoTareaInstance) {
        if (estadoTareaInstance == null) {
            notFound()
            return
        }

        if (estadoTareaInstance.hasErrors()) {
            respond estadoTareaInstance.errors, view:'edit'
            return
        }

        estadoTareaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'EstadoTarea.label', default: 'EstadoTarea'), estadoTareaInstance.id])
                redirect estadoTareaInstance
            }
            '*'{ respond estadoTareaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(EstadoTarea estadoTareaInstance) {

        if (estadoTareaInstance == null) {
            notFound()
            return
        }

        estadoTareaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'EstadoTarea.label', default: 'EstadoTarea'), estadoTareaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoTareaInstance.label', default: 'EstadoTarea'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
