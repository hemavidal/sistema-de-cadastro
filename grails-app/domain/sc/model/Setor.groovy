package sc.model

class Setor {

	String nome
	static hasMany = [gruposCaseiros:GrupoCaseiro]
    static constraints = {
		nome(nullable:false, blank:false)
    }
}
