package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.UUID;

@Embeddable
class LiftMuscleId implements Serializable {

    private UUID liftId;
    private String muscle;

    public LiftMuscleId() {}

    public LiftMuscleId(UUID liftId, String muscle) {
        this.liftId = liftId;
        this.muscle = muscle;
    }

    public UUID getLiftId() {
        return liftId;
    }

    public void setLiftId(UUID liftId) {
        this.liftId = liftId;
    }

    public String getMuscle() {
        return muscle;
    }

    public void setMuscle(String muscle) {
        this.muscle = muscle;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LiftMuscleId that = (LiftMuscleId) o;

        if (!liftId.equals(that.liftId)) return false;
        return muscle.equals(that.muscle);
    }

    @Override
    public int hashCode() {
        int result = liftId.hashCode();
        result = 31 * result + muscle.hashCode();
        return result;
    }
}

@Entity
@Table(name = "lift_muscles")
public class LiftMuscle {

    @EmbeddedId
    private LiftMuscleId id;

    @ManyToOne
    @MapsId("liftId")
    private Lift lift;

    @Enumerated(EnumType.STRING)
    private Muscle muscle;

    private boolean isPrimary = true;

    public LiftMuscle(Lift lift, Muscle muscle, boolean isPrimary) {
        this.id = new LiftMuscleId(lift.getId(), muscle.name());
        this.lift = lift;
        this.muscle = muscle;
        this.isPrimary = isPrimary;
    }

    public Lift getLift() {
        return lift;
    }

    public void setLift(Lift lift) {
        this.lift = lift;
    }

    public Muscle getMuscle() {
        return muscle;
    }

    public void setMuscle(Muscle muscle) {
        this.muscle = muscle;
    }

    public boolean isPrimary() {
        return isPrimary;
    }

    public void setPrimary(boolean primary) {
        isPrimary = primary;
    }

}