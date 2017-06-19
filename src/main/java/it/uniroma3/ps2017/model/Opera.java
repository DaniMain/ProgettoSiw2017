package it.uniroma3.ps2017.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Opera {
	
	@Id
	@GeneratedValue
	private int id;
	private String titolo;
	private Integer anno;
	private String tecnica;
	private String dimensioni;
	@ManyToOne
	private Autore autore;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitolo() {
		return titolo;
	}
	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}
	public Integer getAnno() {
		return anno;
	}
	public void setAnno(Integer anno) {
		this.anno = anno;
	}
	public String getTecnica() {
		return tecnica;
	}
	public void setTecnica(String tecinca) {
		this.tecnica = tecinca;
	}
	public String getDimensioni() {
		return dimensioni;
	}
	public void setDimensioni(String dimensioni) {
		this.dimensioni = dimensioni;
	}
	public Autore getAutore() {
		return autore;
	}
	public void setAutore(Autore autore) {
		this.autore = autore;
	}

}