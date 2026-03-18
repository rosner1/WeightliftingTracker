package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.UUID;

@Embeddable
class LiftMuscleId implements Serializable {
    private UUID liftId;
    private String muscle;
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

    public LiftMuscle() {}
}