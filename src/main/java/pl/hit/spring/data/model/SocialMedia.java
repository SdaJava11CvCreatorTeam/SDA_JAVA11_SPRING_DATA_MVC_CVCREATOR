package pl.hit.spring.data.model;

import javax.persistence.*;

@Entity
@Table(name = "socialMedia")
public class SocialMedia {

    //  socialMediaName                 Facebook
    //  link                            www.facebook.com

    @Id
    @GeneratedValue
    private int idSocialMedia;

    @ManyToOne
    @JoinColumn(name = "idPerson")
    private Person idPerson;

    @Column(name = "name")
    private String name;

    @Column(name = "link")
    private String link;

    public SocialMedia(Person idPerson, String name, String link) {
        this.idPerson = idPerson;
        this.name = name;
        this.link = link;
    }

    public int getIdSocialMedia() {
        return idSocialMedia;
    }

    public void setIdSocialMedia(int idSocialMedia) {
        this.idSocialMedia = idSocialMedia;
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

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
