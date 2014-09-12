package sc.model

import sc.Endereco;
import sc.EstadoCivil;
import sc.NivelDeCrescimento;
import sc.Procedencia;
import sc.Sangue;
import sc.Sexo;

class Pessoa {

	String nome
	String apelido
	Pessoa discipulador
	Pessoa companheiro
	NivelDeCrescimento nivelDeCrescimento
	Date nascimento
	Date integracao
	EstadoCivil estadoCivil
	String estado
	String cidade
	Sexo sexo
	Procedencia procedencia
	Profissao profissao
	Sangue sangue
	Endereco endereco
	List<String> telefones
	String email
	static embedded = ['endereco']
    static constraints = {
		nome nullable:false, blank:false
		apelido nullable:false, blank:false
		nivelDeCrescimento nullable:false, blank:false 
		estadoCivil nullable:false, blank:false
		sexo nullable:false, blank:false
		procedencia nullable:false, blank:false
    }
}
