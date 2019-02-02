package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.Experience;
import pl.hit.spring.data.repositories.ExperienceRepository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
public class ExperienceService {

    ExperienceRepository experienceRepository;

    @Autowired
    public ExperienceService(ExperienceRepository experienceRepository) {
        this.experienceRepository = experienceRepository;
    }

    public Set<Experience> getExperience(int idPerson) {
        Set<Experience> experienceSet = new HashSet<>();

        for (int i = 0; i < getIdExperience(idPerson).length; i++) {
            Experience experience = new Experience();
            experience.setIdExperience(getIdExperience(idPerson)[i]);
            experience.setStartYear(getStartYear(getIdExperience(idPerson)[i]));
            experience.setEndYear(getEndYear(getIdExperience(idPerson)[i]));
            experience.setCompany(getCompany(getIdExperience(idPerson)[i]));
            experience.setLocation(getLocation(getIdExperience(idPerson)[i]));
            experience.setJobTitle(getJobTitle(getIdExperience(idPerson)[i]));
            experience.setDescription(getDescription(getIdExperience(idPerson)[i]));

            experienceSet.add(experience);
        }

        return experienceSet;
    }

    private int[] getIdExperience(int idPerson) {
        return experienceRepository.getIdExperience(idPerson);
    }

    private int getIdPerson(int idExperience) {
        return experienceRepository.getIdPerson(idExperience);
    }

    private String getStartYear(int idExperience) {
        return experienceRepository.getStartYear(idExperience);
    }

    private String getEndYear(int idExperience) {
        return experienceRepository.getEndtYear(idExperience);
    }

    private String getCompany(int idExperience) {
        return experienceRepository.getCompany(idExperience);
    }

    private String getLocation(int idExperience) {
        return experienceRepository.getLocation(idExperience);
    }

    private String getJobTitle(int idExperience) {
        return experienceRepository.getJobTitle(idExperience);
    }

    private String getDescription(int idExperience) {
        return experienceRepository.getDescription(idExperience);
    }
}