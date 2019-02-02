package pl.hit.spring.data.model;

import javax.persistence.*;
import java.util.Objects;


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

    @Column(name = "hashCode")
    private int hashCode;

    public User() {}

    public User(int idUser, String login, String password, int hashCode) {
        this.idUser = idUser;
        this.login = login;
        this.password = password;
        this.hashCode = hashCode;
    }

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public Person getPerson() {
        return person;
    }

    public void setPerson(Person person) {
        this.person = person;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getHashCode() {
        return hashCode;
    }

    public void setHashCode(int hashCode) {
        this.hashCode = hashCode;
    }

    @Override
    public String toString() {
        return "User{" +
                "idUser=" + idUser +
                ", person=" + person +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                ", hashCode=" + hashCode +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return idUser == user.idUser &&
                hashCode == user.hashCode &&
                Objects.equals(person, user.person) &&
                login.equals(user.login) &&
                password.equals(user.password);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idUser, login, password);
    }
}