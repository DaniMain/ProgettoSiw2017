package it.uniroma3.ps2017.model;

import java.util.Date;

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
	private Date anno;
	private String tecinca;
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
	public Date getAnno() {
		return anno;
	}
	public void setAnno(Date anno) {
		this.anno = anno;
	}
	public String getTecinca() {
		return tecinca;
	}
	public void setTecinca(String tecinca) {
		this.tecinca = tecinca;
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
