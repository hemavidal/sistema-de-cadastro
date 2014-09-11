package sc.model

class GrupoCaseiro {

	String nome
	
	static hasMany = [pessoas:Pessoa]
    static constraints = {
    }
}
