package pl.hit.spring.data.model;

import javax.persistence.*;

@Entity
@Table(name = "responsibility")
public class Responsibility {

    @Id
    @GeneratedValue
    @Column(name = "idResponsibility")
    private int idResponsibility;

    @ManyToOne
    @JoinColumn(name = "idExperience")
    private Experience idExperience;

    @Column(name = "resp")
    private String resp;

    public Responsibility() {}

    public Responsibility(int idResponsibility, Experience idExperience, String resp) {
        this.idResponsibility = idResponsibility;
        this.idExperience = idExperience;
        this.resp = resp;
    }

    public int getIdResponsibility() {
        return idResponsibility;
    }

    public void setIdResponsibility(int idResponsibility) {
        this.idResponsibility = idResponsibility;
    }

    public Experience getIdExperience() {
        return idExperience;
    }

    public void setIdExperience(Experience idExperience) {
        this.idExperience = idExperience;
    }

    public String getResp() {
        return resp;
    }

    public void setResp(String resp) {
        this.resp = resp;
    }

    @Override
    public String toString() {
        return "Responsibility{" +
                "idResponsibility=" + idResponsibility +
                ", idExperience=" + idExperience +
                ", resp='" + resp + '\'' +
                '}';
    }
}
