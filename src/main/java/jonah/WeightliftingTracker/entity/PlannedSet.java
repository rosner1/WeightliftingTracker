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

    public PlannedSet(WorkoutLift workoutLift, Integer targetReps, BigDecimal targetWeight) {
        this.workoutLift = workoutLift;
        this.targetReps = targetReps;
        this.targetWeight = targetWeight;
    }

    public UUID getId() {
        return id;
    }

    public void setId(UUID id) {
        this.id = id;
    }

    public WorkoutLift getWorkoutLift() {
        return workoutLift;
    }

    public void setWorkoutLift(WorkoutLift workoutLift) {
        this.workoutLift = workoutLift;
    }

    public Integer getTargetReps() {
        return targetReps;
    }

    public void setTargetReps(Integer targetReps) {
        this.targetReps = targetReps;
    }

    public BigDecimal getTargetWeight() {
        return targetWeight;
    }

    public void setTargetWeight(BigDecimal targetWeight) {
        this.targetWeight = targetWeight;
    }


}