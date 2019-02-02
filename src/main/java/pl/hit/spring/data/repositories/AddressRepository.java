package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.Address;

@Repository
public interface AddressRepository extends JpaRepository<Address, Integer> {

    @Query(nativeQuery = true, value = "SELECT idAddress FROM address WHERE idPerson_idPerson = ?")
    int getIdAddress(int idPerson);

    @Query(nativeQuery = true, value = "SELECT idPerson_idPerson FROM address WHERE idAddress = ?")
    int getIdPerson(int idAddress);

    @Query(nativeQuery = true, value = "SELECT street FROM address WHERE idAddress = ?")
    String getStreet(int idAddress);

    @Query(nativeQuery = true, value = "SELECT houseNumber FROM address WHERE idAddress = ?")
    String getHouseNumber(int idAddress);

    @Query(nativeQuery = true, value = "SELECT apartmentNumber FROM address WHERE idAddress = ?")
    String getApartmentNumber(int idAddress);

    @Query(nativeQuery = true, value = "SELECT postCode FROM address WHERE idAddress = ?")
    String getPostCode(int idAddress);

    @Query(nativeQuery = true, value = "SELECT city FROM address WHERE idAddress = ?")
    String getCity(int idAddress);
}
