package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.Responsibility;

@Repository
public interface ResponsibilityRepository extends JpaRepository<Responsibility, Integer> {

    @Query(nativeQuery = true, value = "SELECT idResponsibility FROM responsibility WHERE idExperience = ?")
    int[] getIdResponsibility(int idExperience);

    @Query(nativeQuery = true, value = "SELECT idExperience FROM responsibility WHERE idResponsibility = ?")
    int getIdExperience(int idResponsibility);

    @Query(nativeQuery = true, value = "SELECT resp FROM responsibility WHERE idResponsibility = ?")
    String getResp(int idResponibility);
}
