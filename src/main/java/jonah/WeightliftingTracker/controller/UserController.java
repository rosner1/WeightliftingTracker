package jonah.WeightliftingTracker.controller;

import org.springframework.web.bind.annotation.*;
import java.util.UUID;
import jonah.WeightliftingTracker.entity.User;
import jonah.WeightliftingTracker.service.UserService;

@RestController
@RequestMapping("/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping
    public User createUser(@RequestBody User user) {
        return userService.createUser(
                user.getUsername(),
                user.getEmail(),
                user.getPassword()
        );
    }

    @GetMapping("/{id}")
    public User getUser(@PathVariable UUID id) {
        return userService.getUser(id);
    }
}