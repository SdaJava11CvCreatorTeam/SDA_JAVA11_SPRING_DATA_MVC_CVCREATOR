package pl.hit.spring.data.model;

public class Skill {

    //  skillName skillLevel                            //   Java [X][X][ ][ ][ ]

    private long id;
    private String skillName;
    private int skillLevel;

    public Skill(String skillName, int skillLevel) {
        this.skillName = skillName;
        this.skillLevel = skillLevel;
    }

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
