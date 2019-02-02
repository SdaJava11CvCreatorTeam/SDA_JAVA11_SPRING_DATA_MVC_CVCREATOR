package pl.hit.spring.mvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.hit.spring.core.services.*;
import pl.hit.spring.data.model.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Set;

@Controller
@RequestMapping("/sqlForm")
public class SqlFormController {

    private UserService userService;
    private PersonService personService;
    private AddressService addressService;
    private ExperienceService experienceService;
    private ResponibilityService responibilityService;
    private EducationService educationService;
    private LanguageService languageService;
    private SkillService skillService;
    private SocialMediaService socialMediaService;

    @Autowired
    public SqlFormController(UserService userService, PersonService personService, AddressService addressService,
                             ExperienceService experienceService, ResponibilityService responibilityService,
                             EducationService educationService, LanguageService languageService,
                             SkillService skillService, SocialMediaService socialMediaService) {
        this.userService = userService;
        this.personService = personService;
        this.addressService = addressService;
        this.experienceService = experienceService;
        this.responibilityService = responibilityService;
        this.educationService = educationService;
        this.languageService = languageService;
        this.skillService = skillService;
        this.socialMediaService = socialMediaService;
    }

    @GetMapping("/{idUser:[1-9][0-9]*}")
    public String showForm(@PathVariable int idUser, Model model, HttpServletRequest request) {
        Person personSql = getPerson(getUser(idUser));
        Person personModel = (Person) request.getAttribute("person");
        if (personModel == null) {
            System.out.println("person is null");
        }

        model.addAttribute("person", personSql);

        return "sqlForm";
    }

    @PostMapping("/{idUser:[1-9][0-9]*}")
    public void saveForm(Model model, HttpServletResponse response) throws IOException {
        System.out.println("IM IN POST!");


        response.sendRedirect("login");
    }

    private User getUser(int idUser) {
        User user = userService.getUserByHashCode(idUser);
        if (user.getIdUser() == 0) {
            String tmp = "-" + idUser;
            user = userService.getUserByHashCode(Integer.valueOf(tmp));
        }
        return user;
    }

    private Person getPerson(User user) {
        Person person = personService.getPerson(user.getIdUser());

        person.setUser(user);
        person.setIdAddress(addressService.getAddress(person.getIdPerson()));
        person.setExperience(getExperienceSet(person.getIdPerson()));
        person.setEducation(educationService.getEducationSet(person.getIdPerson()));
        person.setLanguage(languageService.getLanguageSet(person.getIdPerson()));
        person.setSkill(skillService.getSkills(person.getIdPerson()));
        person.setSocialMedia(socialMediaService.getSocialMediaSet(person.getIdPerson()));

        return person;
    }

    private Set<Experience> getExperienceSet(int idPerson) {
        Set<Experience> experienceSet = experienceService.getExperience(idPerson);

        ArrayList<Experience> experienceArrayList = new ArrayList<>();
        experienceArrayList.addAll(experienceSet);
        for (Experience experience : experienceArrayList) {
            experience.setResponsibility(responibilityService.getResponsibility(
                    experience.getIdExperience()));
        }
        experienceSet.clear();
        for (Experience experience : experienceArrayList) {
            experienceSet.add(experience);
        }

        return experienceSet;
    }
}
