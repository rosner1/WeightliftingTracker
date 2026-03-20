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

    public TemplateLift(WorkoutTemplate template, Lift lift, Integer order) {
        this.template = template;
        this.lift = lift;
        this.order = order;
    }

    public Integer getOrder() {
        return order;
    }
    public void setOrder(Integer order) {
        this.order = order;
    }

    public UUID getId() {
        return id;
    }
    public void setId(UUID id) {
        this.id = id;
    }
    public WorkoutTemplate getTemplate() {
        return template;
    }
    public void setTemplate(WorkoutTemplate template) {
        this.template = template;
    }
    public Lift getLift() {
        return lift;
    }
    public void setLift(Lift lift) {
        this.lift = lift;
    }
}