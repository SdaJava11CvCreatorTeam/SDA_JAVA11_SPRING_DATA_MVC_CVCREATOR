package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.Skill;
import pl.hit.spring.data.repositories.SkillRepository;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
public class SkillService {

    SkillRepository skillRepository;

    @Autowired
    public SkillService(SkillRepository skillRepository) {
        this.skillRepository = skillRepository;
    }

    public Set<Skill> getSkills(int idPerson) {
        Set<Skill> skillSet = new HashSet<>();

        for (int i = 0; i < getIdSkill(idPerson).length; i++) {
            Skill skill = new Skill();

            skill.setIdSkill(getIdSkill(idPerson)[i]);
            skill.setSkillName(getSkillName(getIdSkill(idPerson)[i]));
            skill.setSkillLevel(getSkillLevel(getIdSkill(idPerson)[i]));

            skillSet.add(skill);
        }

        return skillSet;
    }

    private int[] getIdSkill(int idPerson) {
        return skillRepository.getIdSkill(idPerson);
    }

    private int getIdPerson(int idSkill) {
        return skillRepository.getIdPerson(idSkill);
    }

    private String getSkillName(int idSkill) {
        return skillRepository.getSkillName(idSkill);
    }

    private int getSkillLevel(int idSkill) {
        if (skillRepository.getSkillLevel(idSkill) == null) {
            return -1;
        } else {
            return Integer.valueOf(skillRepository.getSkillLevel(idSkill));
        }
    }
}
