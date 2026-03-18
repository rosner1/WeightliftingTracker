package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;

@Entity
@Table(name = "notes")
public class Note {

    @Id
    @GeneratedValue
    @org.hibernate.annotations.UuidGenerator
    private UUID id;

    @ManyToOne
    @JoinColumn(name = "workout_id")
    private Workout workout;

    private String content;

    private LocalDateTime createdAt = LocalDateTime.now();

    public Note() {}
}