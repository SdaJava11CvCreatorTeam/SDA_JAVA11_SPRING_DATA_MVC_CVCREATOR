package pl.hit.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pl.hit.spring.data.model.Person;

import javax.validation.Valid;

@Controller
public class PersonController {

    @RequestMapping(value = "/form", method = RequestMethod.GET)
    public ModelAndView showForm() {
        return new ModelAndView("/form", "person", new Person());
    }

    @RequestMapping(value = "/result", method = RequestMethod.POST)
    public String submit(@Valid @ModelAttribute("person") Person person, BindingResult result, Model model) {
        model.addAttribute("firstName", person.getFirstName());
        return "result";
    }
}