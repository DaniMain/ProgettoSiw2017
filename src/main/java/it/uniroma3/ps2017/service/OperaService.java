package it.uniroma3.ps2017.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.ps2017.model.Autore;
import it.uniroma3.ps2017.model.Opera;
import it.uniroma3.ps2017.repository.AutoreRepository;
import it.uniroma3.ps2017.repository.OperaRepository;

@Service
@Transactional
public class OperaService {
	
	@Autowired
	private OperaRepository operaRepository;
	
	@Autowired
	private AutoreRepository autoreRepository;

	public void save(Opera opera, Integer id) {
		Autore autore = autoreRepository.findOne(id);
		opera.setAutore(autore);
		List<Opera> opere = autore.getOpere();
		opere.add(opera);
		autore.setOpere(opere);
		operaRepository.save(opera);
	}
	
	public Opera findOne(int id) {
		return operaRepository.findOne(id);
	}

	public List<Opera> findAll() {
		return operaRepository.findAll();
	}

}
