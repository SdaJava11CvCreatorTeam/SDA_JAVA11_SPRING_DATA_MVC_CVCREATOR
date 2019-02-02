package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.Experience;

@Repository
public interface ExperienceRepository extends JpaRepository<Experience, Integer> {

    @Query(nativeQuery = true, value = "SELECT idExperience FROM experience WHERE idPerson=?")
    int[] getIdExperience(int idPerson);

    @Query(nativeQuery = true, value = "SELECT idPerson FROM experience WHERE idExperience=?")
    int getIdPerson(int idExperience);

    @Query(nativeQuery = true, value = "SELECT startYear FROM experience WHERE idExperience=?")
    String getStartYear(int idExperience);

    @Query(nativeQuery = true, value = "SELECT endYear FROM experience WHERE idExperience=?")
    String getEndtYear(int idExperience);

    @Query(nativeQuery = true, value = "SELECT company FROM experience WHERE idExperience=?")
    String getCompany(int idExperience);

    @Query(nativeQuery = true, value = "SELECT location FROM experience WHERE idExperience=?")
    String getLocation(int idExperience);

    @Query(nativeQuery = true, value = "SELECT jobTitle FROM experience WHERE idExperience=?")
    String getJobTitle(int idExperience);

    @Query(nativeQuery = true, value = "SELECT description FROM experience WHERE idExperience=?")
    String getDescription(int idExperience);
}
