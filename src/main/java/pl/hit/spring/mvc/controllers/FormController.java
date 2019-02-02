package pl.hit.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pl.hit.spring.data.model.Person;
import pl.hit.spring.dto.PersonDTO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class FormController {


    @GetMapping(value = "/form")
    public ModelAndView getFormPage(Model model){
        model.addAttribute("PersonDTO", new PersonDTO());

        return new ModelAndView("form","PersonDTO", new PersonDTO());
    }

    @PostMapping(value = "/result")
    public String postFormPage(@ModelAttribute("PersonDTO")PersonDTO personDTO, BindingResult bindingResult, ModelMap modelMap){
        if (bindingResult.hasErrors()){
            return "bindingError";
        }
        modelMap.addAttribute("firstName", personDTO.getFirstName());
        modelMap.addAttribute("lastName", personDTO.getLastName());
        modelMap.addAttribute("email", personDTO.getEmail());


        return "result";
    }

}
