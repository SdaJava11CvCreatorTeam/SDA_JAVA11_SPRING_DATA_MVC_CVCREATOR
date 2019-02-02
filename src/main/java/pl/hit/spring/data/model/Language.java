package pl.hit.spring.data.model;

import javax.persistence.*;

@Entity
@Table(name = "language")
public class Language {

    //  languageName languageLevel                          English B2

    @Id
    @GeneratedValue
    private int idLanguage;

    @ManyToOne
    @JoinColumn(name = "idPerson")
    private Person idPerson;

    @Column(name = "name")
    private String name;

    @Column(name = "level")
    private String level;

    public Language() {}

    public Language(Person idPerson, String name, String level) {
        this.idPerson = idPerson;
        this.name = name;
        this.level = level;
    }

    public int getIdLanguage() {
        return idLanguage;
    }

    public void setIdLanguage(int idLanguage) {
        this.idLanguage = idLanguage;
    }

    public Person getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(Person idPerson) {
        this.idPerson = idPerson;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }
}
