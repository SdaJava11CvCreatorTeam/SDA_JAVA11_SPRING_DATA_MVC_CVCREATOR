package pl.hit.spring.dto;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ModelAttribute;


public class PersonDTO {
    private String firstName;
    private String lastName;
    private String email;
    private String adress;
    private String tel;
    private String dateOfBirth;
    private String linkedIn;
    private String github;
    private String yourWebsite;
    private String aboutMe;
    private String schoolName;
    private String studySubject;
    private String studyDateFrom;
    private String studyDateTo;
    private String jobCompany;
    private String occupance;
    private String jobDateFrom;
    private String jobDateTo;
    private String description;


    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getLinkedIn() {
        return linkedIn;
    }

    public void setLinkedIn(String linkedIn) {
        this.linkedIn = linkedIn;
    }

    public String getGithub() {
        return github;
    }

    public void setGithub(String github) {
        this.github = github;
    }

    public String getYourWebsite() {
        return yourWebsite;
    }

    public void setYourWebsite(String yourWebsite) {
        this.yourWebsite = yourWebsite;
    }

    public String getAboutMe() {
        return aboutMe;
    }

    public void setAboutMe(String aboutMe) {
        this.aboutMe = aboutMe;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getStudySubject() {
        return studySubject;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public void setStudySubject(String studySubject) {
        this.studySubject = studySubject;
    }

    public String getStudyDateFrom() {
        return studyDateFrom;
    }

    public void setStudyDateFrom(String studyDateFrom) {
        this.studyDateFrom = studyDateFrom;
    }

    public String getStudyDateTo() {
        return studyDateTo;
    }

    public void setStudyDateTo(String studyDateTo) {
        this.studyDateTo = studyDateTo;
    }

    public String getJobCompany() {
        return jobCompany;
    }

    public void setJobCompany(String jobCompany) {
        this.jobCompany = jobCompany;
    }

    public String getOccupance() {
        return occupance;
    }

    public void setOccupance(String occupance) {
        this.occupance = occupance;
    }

    public String getJobDateFrom() {
        return jobDateFrom;
    }

    public void setJobDateFrom(String jobDateFrom) {
        this.jobDateFrom = jobDateFrom;
    }

    public String getJobDateTo() {
        return jobDateTo;
    }

    public void setJobDateTo(String jobDateTo) {
        this.jobDateTo = jobDateTo;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    private String language;

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
