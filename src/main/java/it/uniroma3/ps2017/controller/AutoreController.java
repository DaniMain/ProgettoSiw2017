package it.uniroma3.ps2017.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.ps2017.model.Autore;
import it.uniroma3.ps2017.service.AutoreService;

@Controller
public class AutoreController {
	
	@Autowired
	private AutoreService autoreService;
	
	@ModelAttribute("autore")
	public Autore construct(){
		return new Autore();
	}
	
	@RequestMapping("/caricaAutore")
	public String showCaricaAutore(){
		return "load-author";
	}
	
	@RequestMapping(value="/caricaAutore", method=RequestMethod.POST)
	public String doCaricaAutore(@ModelAttribute("autore") Autore autore){
		autoreService.save(autore);
		return "redirect:/caricaAutore.html?success=true";
	}
	
	@RequestMapping("/autoriOpera")
	public String autori(Model model){
		model.addAttribute("autori", autoreService.findAll());
		return "brows-author";
	}
	
	@RequestMapping("/autoriOpera/{id}")
	public String detail(Model model, @PathVariable int id){
		model.addAttribute("autore", autoreService.findOne(id));
		return "brows-author";		
	}
	

}
