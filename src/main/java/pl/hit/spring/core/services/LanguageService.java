package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.Language;
import pl.hit.spring.data.repositories.LanguageRepository;

import java.util.HashSet;
import java.util.Set;

@Service
@Transactional
public class LanguageService {

    LanguageRepository languageRepository;

    @Autowired
    public LanguageService(LanguageRepository languageRepository) {
        this.languageRepository = languageRepository;
    }

    public Set<Language> getLanguageSet(int idPerson) {
        Set<Language> languageSet = new HashSet<>();

        for (int i = 0; i < getIdLanguage(idPerson).length; i++) {
            Language language = new Language();

            language.setIdLanguage(getIdLanguage(idPerson)[i]);
            language.setName(getName(getIdLanguage(idPerson)[i]));
            language.setLevel(getLevel(getIdLanguage(idPerson)[i]));

            languageSet.add(language);
        }

        return languageSet;
    }

    private int[] getIdLanguage(int idPerson) {
        return languageRepository.getIdLanguage(idPerson);
    }

    private int getIdPerson(int idLanguage) {
        return languageRepository.getIdPerson(idLanguage);
    }

    private String getName(int idLanguage) {
        return languageRepository.getName(idLanguage);
    }

    private String getLevel(int idLanguage) {
        return languageRepository.getLevel(idLanguage);
    }
}
