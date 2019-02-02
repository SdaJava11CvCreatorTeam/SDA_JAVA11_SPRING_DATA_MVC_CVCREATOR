package pl.hit.spring.core.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import pl.hit.spring.data.model.User;
import pl.hit.spring.data.repositories.UserRepository;

@Service
@Transactional
public class UserService {

    private UserRepository userRepository;

    @Autowired
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User getUserbyLogin(String login) {
        return generateUser(userRepository.getUserByLogin(login));
    }

    public User getUserByHashCode(int hashCode) {
        return generateUser(userRepository.getUserByHashCode(hashCode));
    }

    private User generateUser(String str) {
        if (str == null) {
            return new User();
        } else {
            int id = Integer.valueOf(str.substring(0, str.indexOf(',')));
            str = str.substring(str.indexOf(',') + 1);
            String login = str.substring(0, str.indexOf(','));
            str = str.substring(str.indexOf(',') + 1);
            String password = str.substring(0, str.indexOf(','));
            int hashCode = Integer.valueOf(str.substring(str.indexOf(',') + 1));

            return new User(id, login, password, hashCode);
        }
    }
}
