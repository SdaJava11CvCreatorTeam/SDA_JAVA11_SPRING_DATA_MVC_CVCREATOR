package pl.hit.spring.data.model;

import javax.persistence.*;

@Entity
@Table(name = "education")
public class Education {

    //  college                             // Politechnika Wrocławska
    //  direction                           // Informatyka
    // startYear - endYear                  // 2015 - Present

    @Id
    @GeneratedValue
    private int idEducation;

    @ManyToOne
    @JoinColumn(name = "idPerson")
    private Person idPerson;

    @Column(name = "college")
    private String college;

    @Column(name = "direction")
    private String direction;

    @Column(name = "startYear")
    private String startYear;

    @Column(name = "endYear")
    private String endYear;

    public Education(int idEducation, Person idPerson, String college, String direction, String startYear, String endYear) {
        this.idEducation = idEducation;
        this.idPerson = idPerson;
        this.college = college;
        this.direction = direction;
        this.startYear = startYear;
        this.endYear = endYear;
    }

    public int getIdEducation() {
        return idEducation;
    }

    public void setIdEducation(int idEducation) {
        this.idEducation = idEducation;
    }

    public Person getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(Person idPerson) {
        this.idPerson = idPerson;
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public String getStartYear() {
        return startYear;
    }

    public void setStartYear(String startYear) {
        this.startYear = startYear;
    }

    public String getEndYear() {
        return endYear;
    }

    public void setEndYear(String endYear) {
        this.endYear = endYear;
    }
}
