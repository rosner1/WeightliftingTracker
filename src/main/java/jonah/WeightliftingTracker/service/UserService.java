package jonah.WeightliftingTracker.service;

import org.springframework.stereotype.Service;
import java.util.UUID;
import jonah.WeightliftingTracker.entity.User;
import jonah.WeightliftingTracker.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User createUser(String username, String email, String password) {
        if (userRepository.existsByEmail(email)) {
            throw new RuntimeException("Email already in use");
        }

        if (userRepository.existsByUsername(username)) {
            throw new RuntimeException("Username already taken");
        }

        User user = new User(username, password, email);
        return userRepository.save(user);
    }

    public User getUser(UUID id) {
        return userRepository.findById(id)
                .orElseThrow(() -> new RuntimeException("User not found"));
    }

    public User login(String email, String password) {
        User user = userRepository.findByEmail(email)
                .orElseThrow(() -> new RuntimeException("User not found"));

        if (!user.getPassword().equals(password)) {
            throw new RuntimeException("Invalid password");
        }

        return user;
    }
}