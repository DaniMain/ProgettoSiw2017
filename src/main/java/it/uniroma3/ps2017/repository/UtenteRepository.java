package it.uniroma3.ps2017.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import it.uniroma3.ps2017.model.Utente;

public interface UtenteRepository extends JpaRepository<Utente, Integer>{

	Utente findByUsername(String nome);

}
