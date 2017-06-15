package it.uniroma3.ps2017.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.ps2017.model.Utente;
import it.uniroma3.ps2017.repository.UtenteRepository;

@Service
public class UtenteService {
	
	@Autowired
	private UtenteRepository utenteRepository;
	
	public List<Utente> findAll(){
		return utenteRepository.findAll();
	}

	public Utente findOne(int id) {
		return utenteRepository.findOne(id);
	}
}
