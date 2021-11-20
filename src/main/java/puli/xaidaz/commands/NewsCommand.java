package puli.xaidaz.commands;

import puli.xaidaz.helpers.DateHelper;
import puli.xaidaz.jpa.entity.News;

public class NewsCommand {

    public Long id;
    public String title;
    public String text;
    public String profilePicture;
    public String createdAt;
    public String modifiedAt;

    public NewsCommand() { }

    public NewsCommand(News news) {
        id = news.getId();
        title = news.getTitle();
        text = news.getText();
        profilePicture = news.getProfilePicture();
        createdAt = DateHelper.dateTimeToString(news.getCreatedAt());
        modifiedAt = DateHelper.dateTimeToString(news.getModifiedAt());
    }

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

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String created_at) {
        this.createdAt = created_at;
    }

    public String getModifiedAt() {
        return modifiedAt;
    }

    public void setModifiedAt(String modifiedAt) {
        this.modifiedAt = modifiedAt;
    }

}
