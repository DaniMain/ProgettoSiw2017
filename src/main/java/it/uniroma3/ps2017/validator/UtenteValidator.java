package it.uniroma3.ps2017.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import it.uniroma3.ps2017.model.Utente;
import it.uniroma3.ps2017.service.UtenteService;

@Component
public class UtenteValidator implements Validator {
	
	@Autowired
	private UtenteService utenteService;

	@Override
	public boolean supports(Class<?> aClass) {
		return Utente.class.equals(aClass);
	}

	@Override
	public void validate(Object o, Errors errors) {
		Utente user = (Utente) o;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "NotEmpty");
        if (user.getUsername().length() < 3) {
            errors.rejectValue("username", "Size.userForm.username");
        }
        if (utenteService.findByUsername(user.getUsername()) != null) {
            errors.rejectValue("username", "Duplicate.userForm.username");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty");
        if (user.getPassword().length() < 8) {
            errors.rejectValue("password", "Size.userForm.password");
        }
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "nome", "NotEmpty");
        if (user.getUsername().length() < 3) {
            errors.rejectValue("name", "Size.userForm.userNome");
        }		
	}

}
