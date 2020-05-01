package it.uniroma3.ps2017.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.ps2017.model.Autore;
import it.uniroma3.ps2017.model.Opera;
import it.uniroma3.ps2017.service.AutoreService;
import it.uniroma3.ps2017.service.OperaService;

@Controller
public class RicercaController {

	@Autowired
	private AutoreService autoreService;

	@Autowired
	private OperaService operaService;

	@RequestMapping("/cerca")
	public String showCerca(){
		return "search";
	}

	@RequestMapping(value="/cerca", method=RequestMethod.POST)
	public String doCerca(HttpServletRequest request, Model model){
		String chiave = request.getParameter("chiave").toLowerCase();
		List<Opera> opere = cercaInOpere(chiave, operaService);
		List<Autore> autori = cercaInAutori(chiave, autoreService);
		if (opere.size()==0 && autori.size()==0)
			return "redirect:/cerca.html?success=false";
		else{
			model.addAttribute("opereInTerzine", dividiOpereInTerzine(opere));
			model.addAttribute("autori", autori);
		}
		return "search-results";
	}

	private List<Opera> cercaInOpere(String chiave, OperaService operaService) {
		List<Opera> opere = operaService.findAll();
		List<Opera> ris = new ArrayList<Opera>();
		for (Opera o : opere){
			if(cercaInTitolo(o.getTitolo().toLowerCase(), chiave)){
				ris.add(o);
			}
			else if (cercaInTecnica(o.getTecnica().toLowerCase(), chiave)){
				ris.add(o);
			}
			else if (o.getDimensioni().toLowerCase().equals(chiave)){
				ris.add(o);
			}
			else try{
				if (o.getAnno() == Integer.parseInt(chiave)){
					ris.add(o);
				}
			}
			catch (Exception e){}
		}
		return ris;
	}

	private List<Autore> cercaInAutori(String chiave, AutoreService autoreService) {
		List<Autore> autori = autoreService.findAll();
		List<Autore> ris = new ArrayList<Autore>();
		for (Autore a : autori){
			if(a.getNome().toLowerCase().equals(chiave)){
				ris.add(a);
			}
			else if(a.getCognome().toLowerCase().equals(chiave)){
				ris.add(a);
			}
			else if((a.getNome()+" "+a.getCognome()).equals(chiave)) {
				ris.add(a);
			}
			else if(a.getNazione().toLowerCase().equals(chiave)){
				ris.add(a);
			}
		}
		return ris;
	}
	
	private boolean cercaInTitolo(String titolo, String chiave) {
		if (titolo.equals(chiave)) {
			return true;
		}
		for(String parola: titolo.split(" ")) {
			if(parola.equals(chiave)) {
				return true;
			}
		}
		return false;
	}
	
	private boolean cercaInTecnica(String tecnica, String chiave) {
		if (tecnica.equals(chiave)) {
			return true;
		}
		for(String parola: tecnica.split(" ")) {
			if(parola.equals(chiave)) {
				return true;
			}
		}
		return false;
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
