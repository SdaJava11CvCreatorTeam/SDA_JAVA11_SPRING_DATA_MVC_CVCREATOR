package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

    @Query(nativeQuery = true, value = "SELECT * FROM user WHERE login=?")
    String getUserByLogin(String login);

    @Query(nativeQuery = true, value = "SELECT * FROM user WHERE hashCode=?")
    String getUserByHashCode(int hashCode);
}
