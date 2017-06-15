package it.uniroma3.ps2017.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.ps2017.model.Utente;
import it.uniroma3.ps2017.service.UtenteService;

@Controller
public class UserController {
	
	@Autowired
	private UtenteService utenteService;
	

	@ModelAttribute("user")
	public Utente construct(){
		return new Utente();
	}
	
	@RequestMapping("/users")
	public String users(Model model){
		model.addAttribute("users", utenteService.findAll());
		return "users";
	}
	
	@RequestMapping("/users/{id}")
	public String detail(Model model, @PathVariable int id){
		model.addAttribute("user", utenteService.findOne(id));
		return "user-detail";		
	}
	
	@RequestMapping("/register")
	public String showRegister(){
		return "user-register";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public String doRegister(@ModelAttribute("user") Utente user){
		utenteService.save(user);
		return "user-register";
	}


}
