package sc.model

class Setor {

	String nome
	static hasMany = [gruposCaseiros:GrupoCaseiro]
	static belongsTo = [setor:Igreja]
	
    static constraints = {
		nome(nullable:false, blank:false)
    }
}
