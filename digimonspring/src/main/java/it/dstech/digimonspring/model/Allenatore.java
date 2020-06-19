package it.dstech.digimonspring.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Allenatore {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String nome;
	
	@OneToMany(mappedBy = "allenatore", fetch = FetchType.EAGER)
    List<Digimon> listaDigimon = new ArrayList<Digimon>();
	
	public Allenatore() {
		
	}

	protected Allenatore(Long id, String nome, List<Digimon> listaDigimon) {
		super();
		this.id = id;
		this.nome = nome;
		this.listaDigimon = listaDigimon;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public List<Digimon> getListaDigimon() {
		return listaDigimon;
	}

	public void setListaDigimon(List<Digimon> listaDigimon) {
		this.listaDigimon = listaDigimon;
	}
	
	
	
}
