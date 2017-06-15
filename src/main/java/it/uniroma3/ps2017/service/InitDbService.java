package it.uniroma3.ps2017.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
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
public class InitDbService {
	
	@Autowired
	private UtenteRepository utenteRepository;
	@Autowired
	private RoleRepository roleRepository;
	
	@PostConstruct
	public void init(){
		Role roleUser = new Role();
		roleUser.setRole("ROLE_USER");
		roleRepository.save(roleUser);
		

		Role roleAdmin = new Role();
		roleAdmin.setRole("ROLE_ADMIN");
		roleRepository.save(roleAdmin);

		Utente admin = new Utente();
		admin.setUsername("admin");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		admin.setPassword(encoder.encode("admin"));	
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleAdmin);
		roles.add(roleUser);
		admin.setRuoli(roles);
		utenteRepository.save(admin);
	}

}
