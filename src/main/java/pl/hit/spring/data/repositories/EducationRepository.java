package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.Education;

@Repository
public interface EducationRepository extends JpaRepository<Education, Integer> {

    @Query(nativeQuery = true, value = "SELECT idEducation FROM education WHERE idPerson = ?")
    int[] getIdEducation(int idPerson);

    @Query(nativeQuery = true, value = "SELECT idPerson FROM education WHERE idEducation = ?")
    int getIdPerson(int idEducation);

    @Query(nativeQuery = true, value = "SELECT college FROM education WHERE idEducation = ?")
    String getCollege(int idEducation);

    @Query(nativeQuery = true, value = "SELECT direction FROM education WHERE idEducation = ?")
    String getDirection(int idEducation);

    @Query(nativeQuery = true, value = "SELECT startYear FROM education WHERE idEducation = ?")
    String getStartYear(int idEducation);

    @Query(nativeQuery = true, value = "SELECT endYear FROM education WHERE idEducation = ?")
    String getEndYear(int idEducation);
}
