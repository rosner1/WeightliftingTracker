package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "workout_lifts")
public class WorkoutLift {

    @Id
    @GeneratedValue
    @org.hibernate.annotations.UuidGenerator
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "workout_id")
    private Workout workout;

    @ManyToOne
    @JoinColumn(name = "lift_id")
    private Lift lift;

    @Column(name = "\"order\"")
    private Integer order;

    public WorkoutLift() {}
}