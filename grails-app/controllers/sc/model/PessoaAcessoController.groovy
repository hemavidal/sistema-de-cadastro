package sc.model



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PessoaAcessoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PessoaAcesso.list(params), model:[pessoaAcessoInstanceCount: PessoaAcesso.count()]
    }

    def show(PessoaAcesso pessoaAcessoInstance) {
        respond pessoaAcessoInstance
    }

    def create() {
        respond new PessoaAcesso(params)
    }

    @Transactional
    def save(PessoaAcesso pessoaAcessoInstance) {
        if (pessoaAcessoInstance == null) {
            notFound()
            return
        }

        if (pessoaAcessoInstance.hasErrors()) {
            respond pessoaAcessoInstance.errors, view:'create'
            return
        }

        pessoaAcessoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pessoaAcesso.label', default: 'PessoaAcesso'), pessoaAcessoInstance.id])
                redirect pessoaAcessoInstance
            }
            '*' { respond pessoaAcessoInstance, [status: CREATED] }
        }
    }

    def edit(PessoaAcesso pessoaAcessoInstance) {
        respond pessoaAcessoInstance
    }

    @Transactional
    def update(PessoaAcesso pessoaAcessoInstance) {
        if (pessoaAcessoInstance == null) {
            notFound()
            return
        }

        if (pessoaAcessoInstance.hasErrors()) {
            respond pessoaAcessoInstance.errors, view:'edit'
            return
        }

        pessoaAcessoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PessoaAcesso.label', default: 'PessoaAcesso'), pessoaAcessoInstance.id])
                redirect pessoaAcessoInstance
            }
            '*'{ respond pessoaAcessoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PessoaAcesso pessoaAcessoInstance) {

        if (pessoaAcessoInstance == null) {
            notFound()
            return
        }

        pessoaAcessoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PessoaAcesso.label', default: 'PessoaAcesso'), pessoaAcessoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pessoaAcesso.label', default: 'PessoaAcesso'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
