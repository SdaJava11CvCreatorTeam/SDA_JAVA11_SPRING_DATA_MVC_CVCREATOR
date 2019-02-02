package pl.hit.spring.data.model;

import javax.persistence.*;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "person")
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idPerson")
    private int idPerson;

    @OneToOne
    private User user;

    @Column(name = "firstName")
    private String firstName;

    @Column(name = "lastName")
    private String lastName;

    @Column(name = "dateOfBirth")
    private Date dateOfBirth;

    @Column(name = "gender")
    private boolean gender; //male = true; female = false;

    @Column(name = "phone")
    private int phone;

    @Column(name = "email")
    private String email;

    @Column(name = "about")
    private String about;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "idPerson")
    private Set<Experience> experience = new HashSet<>();

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "idPerson")
    private Set<Education> education = new HashSet<>();

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "idPerson")
    private Set<Skill> skill = new HashSet<>();

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "idPerson")
    private Set<SocialMedia> socialMedia = new HashSet<>();

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "idPerson")
    private Set<Language> language = new HashSet<>();

    @OneToOne(mappedBy = "idPerson")
    private Address idAddress;

    public Person() {}

    public Person(User idUser, String firstName, String lastName, Date dateOfBirth, boolean gender, int phone,
                  String email, String about, Set<Experience> experience, Set<Education> education, Set<Skill> skill,
                  Set<SocialMedia> socialMedia, Set<Language> language, Address idAddress) {
        this.user = idUser;
        this.firstName = firstName;
        this.lastName = lastName;
        this.dateOfBirth = dateOfBirth;
        this.gender = gender;
        this.phone = phone;
        this.email = email;
        this.about = about;
        this.experience = experience;
        this.education = education;
        this.skill = skill;
        this.socialMedia = socialMedia;
        this.language = language;
        this.idAddress = idAddress;
    }

    public int getIdPerson() {
        return idPerson;
    }

    public void setIdPerson(int idPerson) {
        this.idPerson = idPerson;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
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

    public Date getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(Date dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public Set<Experience> getExperience() {
        return experience;
    }

    public void setExperience(Set<Experience> experience) {
        this.experience = experience;
    }

    public Set<Education> getEducation() {
        return education;
    }

    public void setEducation(Set<Education> education) {
        this.education = education;
    }

    public Set<Skill> getSkill() {
        return skill;
    }

    public void setSkill(Set<Skill> skill) {
        this.skill = skill;
    }

    public Set<SocialMedia> getSocialMedia() {
        return socialMedia;
    }

    public void setSocialMedia(Set<SocialMedia> socialMedia) {
        this.socialMedia = socialMedia;
    }

    public Set<Language> getLanguage() {
        return language;
    }

    public void setLanguage(Set<Language> language) {
        this.language = language;
    }

    public Address getIdAddress() {
        return idAddress;
    }

    public void setIdAddress(Address idAddress) {
        this.idAddress = idAddress;
    }

    @Override
    public String toString() {
        return "Person{" +
                "idPerson=" + idPerson +
                ", user=" + user +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", gender=" + gender +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", about='" + about + '\'' +
                ", experience=" + experience +
                ", education=" + education +
                ", skill=" + skill +
                ", socialMedia=" + socialMedia +
                ", language=" + language +
                ", idAddress=" + idAddress +
                '}';
    }
}