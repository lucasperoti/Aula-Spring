package br.com.fiap.spring.model;

public class Aluno {
	
	public String nome;
	public boolean aprovado;
	public String sexo;
	
	public String unidade;
	
	public String getUnidade() {
		return unidade;
	}
	public String getSexo() {
		return sexo;
	}
	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	public void setUnidade(String unidade) {
		this.unidade = unidade;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public boolean isAprovado() {
		return aprovado;
	}
	public void setAprovado(boolean aprovado) {
		this.aprovado = aprovado;
	}

}
