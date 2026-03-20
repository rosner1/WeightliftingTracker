package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.math.BigDecimal;
import java.util.UUID;

@Entity
@Table(name = "template_sets")
public class TemplateSet {

    @Id
    @GeneratedValue
    @org.hibernate.annotations.UuidGenerator
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "template_lift_id")
    private TemplateLift templateLift;

    private Integer targetRepsMin;
    private Integer targetRepsMax;

    private BigDecimal targetWeight;

    public TemplateSet() {}

    public TemplateSet(TemplateLift templateLift, Integer targetRepsMin, Integer targetRepsMax, BigDecimal targetWeight) {
        this.templateLift = templateLift;
        this.targetRepsMin = targetRepsMin;
        this.targetRepsMax = targetRepsMax;
        this.targetWeight = targetWeight;
    }

    public UUID getId() {
        return id;
    }
    public void setId(UUID id) {
        this.id = id;
    }
    public TemplateLift getTemplateLift() {
        return templateLift;
    }
    public void setTemplateLift(TemplateLift templateLift) {
        this.templateLift = templateLift;
    }
    public Integer getTargetRepsMin() {
        return targetRepsMin;
    }
    public void setTargetRepsMin(Integer targetRepsMin) {
        this.targetRepsMin = targetRepsMin;
    }
    public Integer getTargetRepsMax() {
        return targetRepsMax;
    }
    public void setTargetRepsMax(Integer targetRepsMax) {
        this.targetRepsMax = targetRepsMax;
    }
    public BigDecimal getTargetWeight() {
        return targetWeight;
    }
    public void setTargetWeight(BigDecimal targetWeight) {
        this.targetWeight = targetWeight;
    }
}