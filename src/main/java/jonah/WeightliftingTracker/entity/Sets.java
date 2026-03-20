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

    public Sets(WorkoutLift workoutLift, Integer reps, BigDecimal weight) {
        this.workoutLift = workoutLift;
        this.reps = reps;
        this.weight = weight;
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

    public Integer getReps() {
        return reps;
    }

    public void setReps(Integer reps) {
        this.reps = reps;
    }

    public BigDecimal getWeight() {
        return weight;
    }

    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }


}