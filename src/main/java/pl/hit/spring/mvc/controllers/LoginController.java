package pl.hit.spring.mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.hit.spring.core.services.UserService;
import pl.hit.spring.data.model.User;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/login")
public class LoginController {

    private UserService userService;

    @Autowired
    public LoginController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping
    public String showForm() {
        return "login";
    }

    @PostMapping
    public void login(String login, String password, HttpServletResponse resp) throws IOException {
        User user = userService.getUserbyLogin(login);

        if (user.getIdUser() == 0) {
            resp.sendError(401, "Użytkownik nie istnieje!");
        } else if (!user.getPassword().equals(password)) {
            resp.sendError(401, "Niepoprawne hasło!");
        } else {
            resp.sendRedirect("sqlForm/" + Integer.toString(user.getHashCode()).substring(1));
        }
    }
}
