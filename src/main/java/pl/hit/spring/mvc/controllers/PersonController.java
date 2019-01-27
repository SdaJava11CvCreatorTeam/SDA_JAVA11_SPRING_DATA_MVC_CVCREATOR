package pl.hit.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import pl.hit.spring.data.model.Person;

@Controller
public class PersonController {


    @GetMapping("/form")
    public String PersonForm(Model model){
    model.addAttribute("person", "person");
        return "person";
    }

    @PostMapping("/form")
    public String PersonSubmit(@ModelAttribute Person person){
        return "result";
    }




}
