package it.uniroma3.ps2017.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import it.uniroma3.ps2017.model.Opera;
import it.uniroma3.ps2017.service.AutoreService;
import it.uniroma3.ps2017.service.OperaService;

@Controller
public class OperaController {
	
	@Autowired
	private OperaService operaService;
	
	@Autowired
	private AutoreService autoreService;
	
	@ModelAttribute("opera")
	public Opera construct(){
		return new Opera();
	}

	@RequestMapping("/caricaOpera")
	public String showCaricaOpera(Model model){
		model.addAttribute("autori", autoreService.findAll());
		return "load-image";
	}
	
	@RequestMapping(value="/caricaOpera", method=RequestMethod.POST)
	public String doCaricaOpera(@ModelAttribute("opera") Opera opera, HttpServletRequest request){
		Integer autoreId = Integer.parseInt(request.getParameter("autoreId"));
		operaService.save(opera, autoreId);
		return "redirect:/caricaOpera.html?success=true";
	}
	
	@RequestMapping("/tecnicaOpere")
	public String operaTecnica(Model model){
		model.addAttribute("tecniche", listaTecniche(operaService.findAll()));
		return "brows-tecnica";
	}
	
	@RequestMapping("/tecnicheOpere/{tecnica}")
	public String mostraTecnica(Model model, @PathVariable String tecnica){
		model.addAttribute("opereTecniche", opereConTecnica(tecnica, operaService.findAll()));
		return "tecnica-details";
	}

	@RequestMapping("/anniOpere")
	public String operaDetail(Model model){
		model.addAttribute("anni", listaAnni(operaService.findAll()));
		return "brows-anno";
	}
	
	@RequestMapping("/anniOpere/{anno}")
	public String mostraAnno(Model model, @PathVariable Integer anno){
		model.addAttribute("opereAnno", opereInAnno(anno, operaService.findAll()));
		return "anno-details";
	}
	
	private List<String> listaTecniche(List<Opera> opere) {
		List<String> tecniche = new ArrayList<String>();
		for(Opera opera : opere){
			if(!tecniche.contains(opera.getTecnica())){
				tecniche.add(opera.getTecnica());
			}
		}
		Collections.sort(tecniche);
		return tecniche;
	}

	private List<Opera> opereConTecnica(String tecnica, List<Opera> opere) {
		List<Opera> ris = new ArrayList<Opera>();
		for(Opera opera : opere){
			if(opera.getTecnica().equals(tecnica)){
				ris.add(opera);
			}
		}
		return ris;
	}
	
	private List<Opera> opereInAnno(Integer anno, List<Opera> opere) {
		List<Opera> ris = new ArrayList<Opera>();
		for(Opera opera : opere){
			if(opera.getAnno().intValue() == anno.intValue()){
				ris.add(opera);
			}
		}
		return ris;
	}

	private List<Integer> listaAnni(List<Opera> opere){
		List<Integer> anni = new ArrayList<Integer>();
		for(Opera opera : opere){
			if(!anni.contains(opera.getAnno())){
				anni.add(opera.getAnno());
			}
		}
		Collections.sort(anni);
		return anni;
	}

}
