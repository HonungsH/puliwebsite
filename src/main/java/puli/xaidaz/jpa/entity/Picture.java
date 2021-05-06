package puli.xaidaz.jpa.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
public class Picture {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private LocalDateTime createdAt;
    private LocalDateTime modifiedAt;
    private String description;
    private byte[] data;

    @ManyToOne
    @JoinColumn(name="dog_id")
    private Dog dog;

    // Getters and setters start

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(LocalDateTime modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

    // Getters and setters end

}