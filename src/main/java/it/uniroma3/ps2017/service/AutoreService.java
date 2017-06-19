package it.uniroma3.ps2017.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.ps2017.model.Autore;
import it.uniroma3.ps2017.repository.AutoreRepository;

@Service
@Transactional
public class AutoreService {
	
	@Autowired
	private AutoreRepository autoreRepository;
	
	public void save(Autore autore){
		autoreRepository.save(autore);
	}

	public List<Autore> findAll() {
		return autoreRepository.findAll();
	}
	
	public Autore findOne(int id){
		return autoreRepository.findOne(id);
	}

}
