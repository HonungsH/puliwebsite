package puli.xaidaz.jpa.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "News")
public class News {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    @Column(name = "ID")
    private Long id;
    @Column(name = "TITLE")
    private String title;
    @Column(name = "TEXT")
    private String text;
    @Column(name = "PROFILE_PICTURE")
    private String profilePicture;
    @Column(name = "CREATED_AT")
    private LocalDateTime createdAt;
    @Column(name = "MODIFIED_AT")
    private LocalDateTime modifiedAt;

    public News() {
    }

    // Getters and setters start

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime created_at) {
        this.createdAt = created_at;
    }

    public LocalDateTime getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(LocalDateTime modifiedAt) {
        this.modifiedAt = modifiedAt;
    }
    // Getters and setters end
}