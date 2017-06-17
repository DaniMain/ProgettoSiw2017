package it.uniroma3.ps2017.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.ps2017.model.Opera;
import it.uniroma3.ps2017.repository.OperaRepository;

@Service
@Transactional
public class OperaService {
	
	@Autowired
	private OperaRepository operaRepository;

	public void save(Opera opera) {
		operaRepository.save(opera);
	}

}
