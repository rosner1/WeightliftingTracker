package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "sets")
public class Sets {

    @Id
    @GeneratedValue
    @org.hibernate.annotations.UuidGenerator
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "workout_lift_id")
    private WorkoutLift workoutLift;

    @Column(nullable = false)
    private Integer reps;

    @Column(nullable = false)
    private BigDecimal weight;

    private LocalDateTime createdAt = LocalDateTime.now();

    public Sets() {}
}