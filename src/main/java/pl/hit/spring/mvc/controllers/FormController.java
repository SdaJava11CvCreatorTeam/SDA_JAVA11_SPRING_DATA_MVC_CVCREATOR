package pl.hit.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import pl.hit.spring.dto.PersonDTO;

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
        modelMap.addAttribute("adress", personDTO.getAdress());
        modelMap.addAttribute("tel", personDTO.getTel());
        modelMap.addAttribute("dateOfBirth", personDTO.getDateOfBirth());
        modelMap.addAttribute("linkedIn", personDTO.getLinkedIn());
        modelMap.addAttribute("github", personDTO.getGithub());
        modelMap.addAttribute("yourWebsite", personDTO.getYourWebsite());
        modelMap.addAttribute("aboutMe", personDTO.getAboutMe());
        modelMap.addAttribute("schoolName", personDTO.getSchoolName());
        modelMap.addAttribute("studySubject", personDTO.getStudySubject());
        modelMap.addAttribute("studyDateFrom", personDTO.getStudyDateFrom());
        modelMap.addAttribute("studyDateTo", personDTO.getStudyDateTo());
        modelMap.addAttribute("jobCompany", personDTO.getJobCompany());
        modelMap.addAttribute("occupance", personDTO.getOccupance());
        modelMap.addAttribute("jobDateFrom", personDTO.getJobDateFrom());
        modelMap.addAttribute("jobDateTo", personDTO.getJobDateTo());
        modelMap.addAttribute("description", personDTO.getDescription());
        modelMap.addAttribute("language", personDTO.getLanguage());

        return "result";
    }

}
