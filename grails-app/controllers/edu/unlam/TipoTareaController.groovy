package edu.unlam



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional
import grails.plugin.springsecurity.annotation.Secured
@Secured(['ROLE_ADMIN'])
@Transactional(readOnly = true)
class TipoTareaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoTarea.list(params), model:[tipoTareaInstanceCount: TipoTarea.count()]
    }

    def show(TipoTarea tipoTareaInstance) {
        respond tipoTareaInstance
    }

    def create() {
        respond new TipoTarea(params)
    }

    @Transactional
    def save(TipoTarea tipoTareaInstance) {
        if (tipoTareaInstance == null) {
            notFound()
            return
        }

        if (tipoTareaInstance.hasErrors()) {
            respond tipoTareaInstance.errors, view:'create'
            return
        }

        tipoTareaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoTareaInstance.label', default: 'TipoTarea'), tipoTareaInstance.id])
                redirect tipoTareaInstance
            }
            '*' { respond tipoTareaInstance, [status: CREATED] }
        }
    }

    def edit(TipoTarea tipoTareaInstance) {
        respond tipoTareaInstance
    }

    @Transactional
    def update(TipoTarea tipoTareaInstance) {
        if (tipoTareaInstance == null) {
            notFound()
            return
        }

        if (tipoTareaInstance.hasErrors()) {
            respond tipoTareaInstance.errors, view:'edit'
            return
        }

        tipoTareaInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoTarea.label', default: 'TipoTarea'), tipoTareaInstance.id])
                redirect tipoTareaInstance
            }
            '*'{ respond tipoTareaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoTarea tipoTareaInstance) {

        if (tipoTareaInstance == null) {
            notFound()
            return
        }

        tipoTareaInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoTarea.label', default: 'TipoTarea'), tipoTareaInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoTareaInstance.label', default: 'TipoTarea'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
