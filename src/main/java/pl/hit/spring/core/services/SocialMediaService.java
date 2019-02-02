package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.SocialMedia;
import pl.hit.spring.data.repositories.SocialMediaRepository;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
public class SocialMediaService {

    SocialMediaRepository socialMediaRepository;

    @Autowired
    public SocialMediaService(SocialMediaRepository socialMediaRepository) {
        this.socialMediaRepository = socialMediaRepository;
    }

    public Set<SocialMedia> getSocialMediaSet(int idPerson) {
        Set<SocialMedia> socialMediaSet = new HashSet<>();

        for (int i = 0; i < getIdSocialMedia(idPerson).length; i++) {
            SocialMedia socialMedia = new SocialMedia();

            socialMedia.setIdSocialMedia(getIdSocialMedia(idPerson)[i]);
            socialMedia.setName(getName(getIdSocialMedia(idPerson)[i]));
            socialMedia.setLink(getLink(getIdSocialMedia(idPerson)[i]));

            socialMediaSet.add(socialMedia);
        }

        return socialMediaSet;
    }

    private int[] getIdSocialMedia(int idPerson) {
        return socialMediaRepository.getIdSocialMedia(idPerson);
    }

    private int getIdPerson(int idSocialMedia) {
        return socialMediaRepository.getIdPerson(idSocialMedia);
    }

    private String getName(int idSocialMedia) {
        return socialMediaRepository.getName(idSocialMedia);
    }

    private String getLink(int idSocialMedia) {
        return socialMediaRepository.getLink(idSocialMedia);
    }
}
