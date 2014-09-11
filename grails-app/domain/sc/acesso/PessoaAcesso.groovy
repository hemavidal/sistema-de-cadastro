package sc.acesso

import sc.model.Pessoa

class PessoaAcesso {

	String login
	String senha
	Pessoa pessoa
	
    static constraints = {
		login nullable:false, blank:false
		senha nullable:false, blank:false
    }
}
