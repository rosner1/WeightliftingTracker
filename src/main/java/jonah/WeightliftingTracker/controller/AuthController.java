package jonah.WeightliftingTracker.controller;

import org.springframework.web.bind.annotation.*;
import jonah.WeightliftingTracker.entity.User;
import jonah.WeightliftingTracker.service.UserService;

@RestController
@RequestMapping("/auth")
public class AuthController {

    private final UserService userService;

    public AuthController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/register")
    public User register(@RequestBody RegisterRequest request) {
        return userService.createUser(
                request.getUsername(),
                request.getPassword(),
                request.getEmail()
        );
    }

    @PostMapping("/login")
    public User login(@RequestBody LoginRequest request) {
        return userService.login(
                request.getEmail(),
                request.getPassword()
        );
    }
}


class RegisterRequest {
    private String username;
    private String email;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

class LoginRequest {
    private String email;
    private String password;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}