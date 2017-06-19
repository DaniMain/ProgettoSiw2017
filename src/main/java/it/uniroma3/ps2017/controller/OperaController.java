package it.uniroma3.ps2017.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
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

}
