package it.uniroma3.ps2017.validator;

import org.springframework.ui.Model;

import it.uniroma3.ps2017.model.Utente;

public class UtenteValidator {

	public boolean validate(Utente user, Model model) {
		boolean ok = true;
		// controllo username
		if(user.getUsername()==null||user.getUsername().equals("")){
			model.addAttribute("errUsername", "Campo vuoto");
			ok=false;
		}
		// controllo cognome
		if(user.getCognome()==null||user.getCognome().equals("")){
			model.addAttribute("errCognome", "Campo vuoto");
			ok=false;
		}
		// controllo nome
		if(user.getNome()==null||user.getNome().equals("")){
			model.addAttribute("errNome", "Campo vuoto");
			ok=false;
		}
		// controllo nome
		if(user.getDataNascita()==null||user.getDataNascita().equals("")){
			model.addAttribute("errDataNascita", "Campo vuoto");
			ok=false;
		}
		// settaggio data di nascita
		
		return ok;
	}

}
