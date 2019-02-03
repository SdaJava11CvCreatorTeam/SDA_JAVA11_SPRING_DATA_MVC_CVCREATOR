package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.Person;
import pl.hit.spring.data.repositories.PersonRepository;

import java.util.Date;

@Service
@Transactional
public class PersonService {

    private PersonRepository personRepository;

    @Autowired
    public PersonService(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }

    public Person getPerson(int idUser) {
        Person person = new Person();

        person.setIdPerson(getIdPerson(idUser));
        person.setFirstName(getFirstName(getIdPerson(idUser)));
        person.setLastName(getLastName(getIdPerson(idUser)));
        person.setDateOfBirth(getDateOfBirth(getIdPerson(idUser)));
        person.setGender(getGender(getIdPerson(idUser)));
        person.setPhone(getPhone(getIdPerson(idUser)));
        person.setEmail(getEmail(getIdPerson(idUser)));
        person.setAbout(getAbout(getIdPerson(idUser)));

        return person;
    }

    public void setPerson(Person oldPerson, Person newPerson) {
//        disableSaveMode();

        if (!newPerson.getFirstName().equals(oldPerson.getFirstName())) {
            setFirstName(newPerson);
        }

//        enableSaveMode();
    }

    private void enableSaveMode() {
        personRepository.enableSafeMode();
    }

    private void disableSaveMode() {
        personRepository.disableSafeMode();
    }

    private int getIdPerson(int idUser) {
        return personRepository.getIdPerson(idUser);
    }

    private int getIdUser(int idPerson) {
        return personRepository.getIdUser(idPerson);
    }

    private String getFirstName(int idPerson) {
        return personRepository.getFirstName(idPerson);
    }

    private String getLastName(int idPerson) {
        return personRepository.getLastName(idPerson);
    }

    private Date getDateOfBirth(int idPerson) {
        String dateString = personRepository.getDateOfBirth(idPerson);

        if (dateString == null) {
            return new Date();
        } else {
            int year = Integer.valueOf(dateString.substring(0, dateString.indexOf('-')));
            dateString = dateString.substring(dateString.indexOf('-') + 1);
            int month = Integer.valueOf(dateString.substring(0, dateString.indexOf('-')));
            dateString = dateString.substring(dateString.indexOf('-') + 1);
            int day = Integer.valueOf(dateString);

            return new Date(year, month, day);
        }
    }

    private boolean getGender(int idPerson) {
        return personRepository.getGender(idPerson);
    }

    private int getPhone(int idPerson) {
        if (personRepository.getPhone(idPerson) == null) {
            return -1;
        } else {
            return Integer.valueOf(personRepository.getPhone(idPerson));
        }
    }

    private String getEmail(int idPerson) {
        return personRepository.getEmail(idPerson);
    }

    private String getAbout(int idPerson) {
        return personRepository.getAbout(idPerson);
    }

    private int getIdAddress(int idPerson) {
        return personRepository.getIdAddress(idPerson);
    }

    private void setFirstName(Person newPerson) {
        personRepository.setFirstName(newPerson.getFirstName(), newPerson.getIdPerson());
    }
}