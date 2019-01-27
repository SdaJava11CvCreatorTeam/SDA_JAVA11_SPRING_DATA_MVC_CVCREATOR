//package pl.hit.spring.data.repositories;
//
//import org.springframework.data.jpa.repository.JpaRepository;
//import org.springframework.stereotype.Repository;
//import pl.hit.spring.data.model.Person;
//
//import java.util.Optional;
//import java.util.Set;
//
//@Repository
//public interface AddressRepository extends JpaRepository<AddressRepository, Long> {
//
//    Set<AddressRepository> findDistinctSourcesByActiveIsTrueAndKnowingUsersNotContains(Person person);
//
//    Optional<AddressRepository> findByName(String name);
//}
