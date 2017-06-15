package it.uniroma3.ps2017.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

@Entity
public class Utente {
	
	@Id
	@GeneratedValue
	private int id;
	private String nome;
	private String cognome;
	private String username;
	private String password;
	private Date dataNascita;
	private boolean amministratore;
	@ManyToMany
	@JoinTable
	private List<Role> ruoli;
	private boolean enabled;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDataNascita() {
		return dataNascita;
	}
	public void setDataNascita(Date dataNascita) {
		this.dataNascita = dataNascita;
	}
	public boolean isAmministratore() {
		return amministratore;
	}
	public void setAmministratore(boolean amministratore) {
		this.amministratore = amministratore;
	}
	public List<Role> getRuoli() {
		return ruoli;
	}
	public void setRuoli(List<Role> ruoli) {
		this.ruoli = ruoli;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

}