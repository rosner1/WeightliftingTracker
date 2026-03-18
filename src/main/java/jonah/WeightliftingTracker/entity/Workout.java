package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "workouts")
public class Workout {

    @Id
    @GeneratedValue
    @org.hibernate.annotations.UuidGenerator
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "template_id")
    private WorkoutTemplate template;

    private String name;

    private LocalDateTime createdAt = LocalDateTime.now();
    private LocalDateTime completedAt;

    public Workout() {}
}