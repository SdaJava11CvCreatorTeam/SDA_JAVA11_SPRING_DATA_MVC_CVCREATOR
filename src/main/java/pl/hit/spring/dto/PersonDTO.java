package pl.hit.spring.dto;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;


public class PersonDTO {
    private String firstName;
    private String lastName;
    private String email;


    public PersonDTO() {

    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
