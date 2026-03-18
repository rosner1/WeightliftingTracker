package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.UUID;

@Entity
@Table(name = "planned_sets")
public class PlannedSet {

    @Id
    @GeneratedValue
    @org.hibernate.annotations.UuidGenerator
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "workout_lift_id")
    private WorkoutLift workoutLift;

    private Integer targetReps;
    private BigDecimal targetWeight;

    public PlannedSet() {}
}