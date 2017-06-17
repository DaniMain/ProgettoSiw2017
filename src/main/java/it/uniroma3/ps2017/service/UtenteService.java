package it.uniroma3.ps2017.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import it.uniroma3.ps2017.model.Role;
import it.uniroma3.ps2017.model.Utente;
import it.uniroma3.ps2017.repository.RoleRepository;
import it.uniroma3.ps2017.repository.UtenteRepository;

@Service
@Transactional
public class UtenteService {
	
	@Autowired
	private UtenteRepository utenteRepository;
	@Autowired
	private RoleRepository roleRepository;
	
	public List<Utente> findAll(){
		return utenteRepository.findAll();
	}

	public Utente findOne(int id) {
		return utenteRepository.findOne(id);
	}

	public void save(Utente user) {
		user.setEnabled(true);
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String password = user.getPassword();
		user.setPassword(encoder.encode(password));
		
		List<Role> ruoli = new ArrayList<Role>();
		ruoli.add(roleRepository.findByRole("ROLE_USER"));
		user.setRuoli(ruoli);
		
		utenteRepository.save(user);
	}

	public Utente findByUsername(String nome) {
		return utenteRepository.findByUsername(nome);
	}
}
