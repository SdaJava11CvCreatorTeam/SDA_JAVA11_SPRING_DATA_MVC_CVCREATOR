package pl.hit.spring.data.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "experience")
public class Experience {

    //  jobtitle                                                   Trener SDA
    //  company | location | startYear - endYear                   SDA | BL Wrocław | 2016 - Present
    //  subtitle                                                   Trener przyszłego pokolenia programistów
    //  - responsibilities                                         - Przekzywanie wiedzy,
    //                                                             - Pomoc w rozwiązywanie problemów,
    //                                                             - Dołowanie podopiecznych.

    @Id
    @GeneratedValue
    private int idExperience;

    @ManyToOne
    @JoinColumn(name = "idPerson")
    private Person idPerson;

    @Column(name = "startYear")
    private String startYear;

    @Column(name = "endYear")
    private String endYear;

    @Column(name = "company")
    private String company;

    @Column(name = "location")
    private String location;

    @Column(name = "jobTitle")
    private String jobTitle;

    @Column(name = "description")
    private String description;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "idExperience")
    private Set<Responsibility> responsibility = new HashSet<>();

    public Experience() {}

    public Experience(Person idPerson, String startYear, String endYear, String company, String location,
                      String jobTitle, String description) {
        this.idPerson = idPerson;
        this.startYear = startYear;
        this.endYear = endYear;
        this.company = company;
        this.location = location;
        this.jobTitle = jobTitle;
        this.description = description;
    }

    public int getIdExperience() {
        return idExperience;
    }

    public void setIdExperience(int idExperience) {
        this.idExperience = idExperience;
    }

    public Person getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(Person idPerson) {
        this.idPerson = idPerson;
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

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getJobTitle() {
        return jobTitle;
    }

    public void setJobTitle(String jobTitle) {
        this.jobTitle = jobTitle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Set<Responsibility> getResponsibility() {
        return responsibility;
    }

    public void setResponsibility(Set<Responsibility> responsibility) {
        this.responsibility = responsibility;
    }


}
