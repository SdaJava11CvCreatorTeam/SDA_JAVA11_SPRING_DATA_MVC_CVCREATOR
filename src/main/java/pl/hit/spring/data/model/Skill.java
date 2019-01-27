package pl.hit.spring.data.model;

import javax.persistence.*;

@Entity
@Table(name = "skill")
public class Skill {

    //  skillName skillLevel                            //   Java [X][X][ ][ ][ ]

    @Id
    @GeneratedValue
    private int idSkill;

    @ManyToOne
    @JoinColumn(name = "idPerson")
    private Person idPerson;

    @Column(name = "skillName")
    private String skillName;

    @Column(name = "skillLevel")
    private int skillLevel;

    public Skill(int idSkill, Person idPerson, String skillName, int skillLevel) {
        this.idSkill = idSkill;
        this.idPerson = idPerson;
        this.skillName = skillName;
        this.skillLevel = skillLevel;
    }

    public int getIdSkill() {return idSkill;}

    public void setIdSkill(int idSkill) {this.idSkill = idSkill;}

    public Person getIdPerson() {return idPerson;}

    public void setIdPerson(Person idPerson) {this.idPerson = idPerson;}

    public String getSkillName() {
        return skillName;
    }

    public void setSkillName(String skillName) {
        this.skillName = skillName;
    }

    public int getSkillLevel() {
        return skillLevel;
    }

    public void setSkillLevel(int skillLevel) {
        this.skillLevel = skillLevel;
    }
}
