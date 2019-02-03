package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.Person;

@Repository
public interface PersonRepository extends JpaRepository<Person, Integer> {

    @Query(nativeQuery = true, value = "SET SQL_SAFE_UPDATES = 0")
    void disableSafeMode();

    @Query(nativeQuery = true, value = "SET SQL_SAFE_UPDATES = 1")
    void enableSafeMode();

    @Query(nativeQuery = true, value = "SELECT idPerson FROM person WHERE user_idUser = ?")
    int getIdPerson(int idUser);

    @Query(nativeQuery = true, value = "SELECT user_idUser FROM person WHERE idPerson = ?")
    int getIdUser(int idPerson);

    @Query(nativeQuery = true, value = "SELECT firstName FROM person WHERE idPerson = ?")
    String getFirstName(int idPerson);

    @Query(nativeQuery = true, value = "SELECT lastName FROM person WHERE idPerson = ?")
    String getLastName(int idPerson);

    @Query(nativeQuery = true, value = "SELECT dateOfBirth FROM person WHERE idPerson = ?")
    String getDateOfBirth(int idPerson);

    @Query(nativeQuery = true, value = "SELECT gender FROM person WHERE idPerson = ?")
    boolean getGender(int idPerson);

    @Query(nativeQuery = true, value = "SELECT phone FROM person WHERE idPerson = ?")
    String getPhone(int idPerson);

    @Query(nativeQuery = true, value = "SELECT email FROM person WHERE idPerson = ?")
    String getEmail(int idPerson);

    @Query(nativeQuery = true, value = "SELECT about FROM person WHERE idPerson = ?")
    String getAbout(int idPerson);

    @Query(nativeQuery = true, value = "SELECT idAddress FROM person WHERE idPerson = ?")
    int getIdAddress(int idPerson);

    @Query(nativeQuery = true, value = "UPDATE person SET firstName = ? WHERE idPerson = 1;")
    void setFirstName(String newFirstName, int idPerson);
}
