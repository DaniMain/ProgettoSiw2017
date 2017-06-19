package it.uniroma3.ps2017.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import it.uniroma3.ps2017.model.Autore;
import it.uniroma3.ps2017.model.Utente;

public interface AutoreRepository extends JpaRepository<Autore, Integer>{

}