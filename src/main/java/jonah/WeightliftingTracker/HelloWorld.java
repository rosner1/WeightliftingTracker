package jonah.WeightliftingTracker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.CrossOrigin;
import java.util.Map;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
public class HelloWorld {
    @GetMapping("/hello")
    public Map<String, String> hello() {
        return Map.of("message", "Hello there");
    }
}
