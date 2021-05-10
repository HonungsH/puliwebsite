package puli.xaidaz.jpa.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.time.LocalDateTime;

@Entity
public class Text {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private String textKey;
    private String textGroup;
    private String text;

    public Text() {
    }

    // Getters and setters start

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getTextKey() {
        return textKey;
    }

    public void setTextKey(String textKey) {
        this.textKey = textKey;
    }

    public String getTextGroup() {
        return textGroup;
    }

    public void setTextGroup(String textGroup) {
        this.textGroup = textGroup;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    // Getters and setters end

}