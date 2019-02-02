package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.Language;

@Repository
public interface LanguageRepository extends JpaRepository<Language, Integer> {

    @Query(nativeQuery = true, value = "SELECT idLanguage FROM language WHERE idPerson = ?")
    int[] getIdLanguage(int idPerson);

    @Query(nativeQuery = true, value = "SELECT idPerson FROM language WHERE idLanguage = ?")
    int getIdPerson(int idLanguage);

    @Query(nativeQuery = true, value = "SELECT name FROM language WHERE idLanguage = ?")
    String getName(int idLanguage);

    @Query(nativeQuery = true, value = "SELECT level FROM language WHERE idLanguage = ?")
    String getLevel(int idLanguage);
}
