package pl.hit.spring.data.model;

import java.util.Date;

public class Person {

    private long id;
    private String email;
    private String name;
    private String surname;
    private String gender;
    private Date birthDate;
    private int phone;
    private String[] socialMedia;
    private Address address;
    private Education[] education;
    private Skill[] skills;
    private String about;
    private Experience[] experience;
    private Language[] languages;

    public Person(long id, String email, String name, String surname, String gender, Date birthDate, int phone,
                  String[] socialMedia, Address address, Education[] education, Skill[] skills, String about,
                  Experience[] experience, Language[] languages) {
        this.id = id;
        this.email = email;
        this.name = name;
        this.surname = surname;
        this.gender = gender;
        this.birthDate = birthDate;
        this.phone = phone;
        this.socialMedia = socialMedia;
        this.address = address;
        this.education = education;
        this.skills = skills;
        this.about = about;
        this.experience = experience;
        this.languages = languages;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
        this.phone = phone;
    }

    public String[] getSocialMedia() {
        return socialMedia;
    }

    public void setSocialMedia(String[] socialMedia) {
        this.socialMedia = socialMedia;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Education[] getEducation() {
        return education;
    }

    public void setEducation(Education[] education) {
        this.education = education;
    }

    public Skill[] getSkills() {
        return skills;
    }

    public void setSkills(Skill[] skills) {
        this.skills = skills;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public Experience[] getExperience() {
        return experience;
    }

    public void setExperience(Experience[] experience) {
        this.experience = experience;
    }

    public Language[] getLanguages() {
        return languages;
    }

    public void setLanguages(Language[] languages) {
        this.languages = languages;
    }
}
