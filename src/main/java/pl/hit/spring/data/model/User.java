package pl.hit.spring.data.model;

import javax.persistence.*;


@Entity
@Table(name = "user")
public class User {

    @Id
    @GeneratedValue
    private int idUser;

    @OneToOne(mappedBy = "user")
    private Person person;

    @Column(name = "login")
    private String login;

    @Column(name = "password")
    private String password;


    @Override
    public String toString() {
        return "User{" +
                "idUser=" + idUser +
                ", login='" + login + '\'' +
                '}';
    }
}