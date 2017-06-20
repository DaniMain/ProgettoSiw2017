package it.uniroma3.ps2017.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	public String doRegister(@Valid @ModelAttribute("user") Utente user, HttpServletRequest request, 
			BindingResult result){
		
		if(result.hasErrors()){
			return "user-register";
		}
		if(usernameNonValido(user, utenteService)){
			return "redirect:/register.html?duplicato=true";
		}
		String password1 = request.getParameter("password1");
		if(user.getPassword().equals(password1)){
			utenteService.save(user);
			return "redirect:/register.html?success=true";
		}
		return "redirect:/register.html?success=false";
	}

	@RequestMapping("/account")
	public String account(Model model, Principal principal){
		String nome = principal.getName();
		model.addAttribute("user", utenteService.findByUsername(nome));
		return "user-detail";
	}

	private boolean usernameNonValido(Utente user, UtenteService utenteService) {
		List<Utente> utentiRegistrati = utenteService.findAll();
		for(Utente u : utentiRegistrati){
			if(user.getUsername().equals(u.getUsername()))
				return true;
		}
		return false;
	}

}
