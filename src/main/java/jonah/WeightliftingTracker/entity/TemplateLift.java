package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "template_lifts")
public class TemplateLift {

    @Id
    @GeneratedValue
    @org.hibernate.annotations.UuidGenerator
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "template_id")
    private WorkoutTemplate template;

    @ManyToOne
    @JoinColumn(name = "lift_id")
    private Lift lift;

    @Column(name = "\"order\"")
    private Integer order;

    public TemplateLift() {}
}