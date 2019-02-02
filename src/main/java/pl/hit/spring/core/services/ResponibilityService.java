package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.Responsibility;
import pl.hit.spring.data.repositories.ResponsibilityRepository;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

@Service
@Transactional
public class ResponibilityService {

    ResponsibilityRepository responsibilityRepository;

    @Autowired
    public ResponibilityService(ResponsibilityRepository responsibilityRepository) {
        this.responsibilityRepository = responsibilityRepository;
    }

    public Set<Responsibility> getResponsibility(int idExperience) {
        Set<Responsibility> responsibilitySet = new HashSet<>();

        for (int i = 0; i < getIdResponibility(idExperience).length; i++) {
            Responsibility responsibility = new Responsibility();

            responsibility.setIdResponsibility(getIdResponibility(idExperience)[i]);
            responsibility.setResp(getResp(getIdResponibility(idExperience)[i]));

            responsibilitySet.add(responsibility);
        }

        return responsibilitySet;
    }

    private int[] getIdResponibility(int idExperience) {
        return responsibilityRepository.getIdResponsibility(idExperience);
    }

    private int getIdExperience(int idResponsibility) {
        return responsibilityRepository.getIdExperience(idResponsibility);
    }

    private String getResp(int idResponsibility) {
        return responsibilityRepository.getResp(idResponsibility);
    }
}
