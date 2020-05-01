package it.uniroma3.ps2017.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.ps2017.model.Autore;
import it.uniroma3.ps2017.model.Opera;
import it.uniroma3.ps2017.service.AutoreService;
import it.uniroma3.ps2017.service.OperaService;

@Controller
public class AutoreController {
	
	@Autowired
	private AutoreService autoreService;
	
	@Autowired
	private OperaService operaService;
	
	@ModelAttribute("autore")
	public Autore construct(){
		return new Autore();
	}
	
	@RequestMapping("/caricaAutore")
	public String showCaricaAutore(){
		return "load-author";
	}
	
	@RequestMapping(value="/caricaAutore", method=RequestMethod.POST)
	public String doCaricaAutore(@ModelAttribute("autore") Autore autore, BindingResult result){
		if(result.hasErrors()) {
			return showCaricaAutore();
		}
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
		Autore autore = autoreService.findOne(id);
		model.addAttribute("autore", autore);
		List<List<Opera>> opereInTerzine = this.dividiOpereInTerzine(autore.getOpere());
		model.addAttribute("opereInTerzine", opereInTerzine);
		return "author-detail";		
	}
	
	@RequestMapping("/autoriOpera/Opera/{id}")
	public String operaDetail(Model model, @PathVariable int id){
		model.addAttribute("opera", operaService.findOne(id));
		return "opera-detail";
	}
	
	@RequestMapping("/autoriOpera/cancella/{id}")
	public String cancellaAutore(@PathVariable int id){
		autoreService.delete(id);
		return "redirect:/autoriOpera.html?success=true";
	}
	
	@RequestMapping("/autoriOpera/Opera/cancella/{operaId}-{autoreId}")
	public String cancellaOpera(@PathVariable int operaId, @PathVariable int autoreId){
		operaService.delete(operaId,autoreId);
		return "redirect:/autoriOpera/{autoreId}.html?success=true";
	}
	
	private List<List<Opera>> dividiOpereInTerzine(List<Opera> opereTutte) {
		if(opereTutte.isEmpty())
			return new ArrayList<>();
		List<List<Opera>> result = new ArrayList<>();
		int i = 1;
		List<Opera> terzina = new ArrayList<>();
		for(Opera o: opereTutte) {
			terzina.add(o);
			if (i == 3) {
				result.add(terzina);
				terzina = new ArrayList<>();
				i = 0;
			}
			i++;
		}
		if(!terzina.isEmpty()) {
			result.add(terzina);
		}
		return result;
	}

}
