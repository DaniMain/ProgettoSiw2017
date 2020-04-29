package it.uniroma3.ps2017.service;

import java.util.Comparator;
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
		List<Autore> autori = autoreRepository.findAll();
		autori.sort(
			new Comparator<Autore>() {
				@Override
				public int compare(Autore a1, Autore a2) {
					return a1.getCognome().compareTo(a2.getCognome());
				} 
			}
		);
		return autori;
	}
	
	public Autore findOne(int id){
		return autoreRepository.findOne(id);
	}

	public void delete(int id) {
		autoreRepository.delete(id);
	}

}
