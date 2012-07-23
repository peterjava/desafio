package com.github.comente_sobre.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="usuario")
public class Usuario {

	@Id
	@GeneratedValue
	private Long id;
	private String nome;
	private String email;

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		if(id >0){
			this.id = id;
		}
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}
