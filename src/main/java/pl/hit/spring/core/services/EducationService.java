package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.Education;
import pl.hit.spring.data.repositories.EducationRepository;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
public class EducationService {

    EducationRepository educationRepository;

    @Autowired
    public EducationService(EducationRepository educationRepository) {
        this.educationRepository = educationRepository;
    }

    public Set<Education> getEducationSet(int idPerson) {
        Set<Education> educationSet = new HashSet<>();

        for (int i = 0; i < getIdEducation(idPerson).length; i++) {
            Education education = new Education();

            education.setIdEducation(getIdEducation(idPerson)[i]);
            education.setCollege(getCollege(getIdEducation(idPerson)[i]));
            education.setDirection(getDirection(getIdEducation(idPerson)[i]));
            education.setStartYear(getStartYear(getIdEducation(idPerson)[i]));
            education.setEndYear(getEndYear(getIdEducation(idPerson)[i]));

            educationSet.add(education);
        }

        return educationSet;
    }

    private int[] getIdEducation(int idPerson) {
        return educationRepository.getIdEducation(idPerson);
    }

    private int getIdPerson(int idEducation) {
        return educationRepository.getIdPerson(idEducation);
    }

    private String getCollege(int idEducation) {
        return educationRepository.getCollege(idEducation);
    }

    private String getDirection(int idEducation) {
        return educationRepository.getDirection(idEducation);
    }

    private String getStartYear(int idEducation) {
        return educationRepository.getStartYear(idEducation);
    }

    private String getEndYear(int idEducation) {
        return educationRepository.getEndYear(idEducation);
    }
}
