package sc;

public enum Sexo {
	MASCULINO("Masculino"),
	FEMININO("Feminino");
	
	private String nome;
	
	private Sexo(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

}
