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

    public WorkoutLift(Workout workout, Lift lift, Integer order) {
        this.workout = workout;
        this.lift = lift;
        this.order = order;
    }
    
    public UUID getId() {
        return id;
    }
    public void setId(UUID id) {
        this.id = id;
    }
    public Workout getWorkout() {
        return workout;
    }
    public void setWorkout(Workout workout) {
        this.workout = workout;
    }
    public Lift getLift() {
        return lift;
    }
    public void setLift(Lift lift) {
        this.lift = lift;
    }
    public Integer getOrder() {
        return order;
    }
    public void setOrder(Integer order) {
        this.order = order;
    }
}