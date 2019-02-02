package pl.hit.spring.data.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import pl.hit.spring.data.model.SocialMedia;

@Repository
public interface SocialMediaRepository extends JpaRepository<SocialMedia, Integer> {

    @Query(nativeQuery = true, value = "SELECT idSocialMedia FROM socialMedia WHERE idPerson = ?")
    int[] getIdSocialMedia(int idPerson);

    @Query(nativeQuery = true, value = "SELECT idPerson FROM socialMedia WHERE idSocialMedia = ?")
    int getIdPerson(int idSocialMedia);

    @Query(nativeQuery = true, value = "SELECT name FROM socialMedia WHERE idSocialMedia = ?")
    String getName(int idSocialMedia);

    @Query(nativeQuery = true, value = "SELECT link FROM socialMedia WHERE idSocialMedia = ?")
    String getLink(int idSocialMedia);
}
