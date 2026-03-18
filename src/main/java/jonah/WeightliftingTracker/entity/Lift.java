package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.util.UUID;

@Entity
@Table(name = "lifts")
public class Lift {

    @Id
    @GeneratedValue
    @org.hibernate.annotations.UuidGenerator
    private UUID id;

    @Column(nullable = false)
    private String name;

    private String description;

    public Lift() {}
}