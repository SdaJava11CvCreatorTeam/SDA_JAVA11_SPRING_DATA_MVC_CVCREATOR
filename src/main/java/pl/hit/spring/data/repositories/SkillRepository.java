package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.Skill;

@Repository
public interface SkillRepository extends JpaRepository<Skill, Integer> {

    @Query(nativeQuery = true, value = "SELECT idSkill FROM skill WHERE idPerson = ?")
    int[] getIdSkill(int idPerson);

    @Query(nativeQuery = true, value = "SELECT idPerson FROM skill WHERE idSkill = ?")
    int getIdPerson(int idSkill);

    @Query(nativeQuery = true, value = "SELECT skillName FROM skill WHERE idSkill = ?")
    String getSkillName(int idSkill);

    @Query(nativeQuery = true, value = "SELECT skillLevel FROM skill WHERE idSkill = ?")
    String getSkillLevel(int idSkill);
}
