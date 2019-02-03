package pl.hit.spring.mvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userMenu")
public class UserMenuController {

    @GetMapping("/{idUser:[1-9][0-9]*}")
    public String showMenu(@PathVariable int idUser) {
        return "userMenu";
    }
}
