package pl.hit.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.hit.spring.data.model.Person;

@Controller
public class PersonController {


    @GetMapping("/person")
    public String PersonForm(Model model){
    model.addAttribute("person", new Person());
        return "person";
    }

    @PostMapping("/person")
    public String PersonSubmit(@ModelAttribute Person person){
        return "result";
    }




}
