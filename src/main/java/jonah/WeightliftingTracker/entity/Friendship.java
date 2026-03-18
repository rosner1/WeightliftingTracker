package jonah.WeightliftingTracker.entity;

import jakarta.persistence.*;
import java.time.LocalDateTime;
import java.util.UUID;
import java.io.Serializable;

@Embeddable
class FriendshipId implements Serializable {
    private UUID userId;
    private UUID friendId;
}

@Entity
@Table(name = "friendships")
public class Friendship {

    @EmbeddedId
    private FriendshipId id;

    @ManyToOne
    @MapsId("userId")
    private User user;

    @ManyToOne
    @MapsId("friendId")
    private User friend;

    private LocalDateTime createdAt = LocalDateTime.now();

    public Friendship() {}
}