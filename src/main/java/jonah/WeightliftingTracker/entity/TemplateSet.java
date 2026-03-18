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
}