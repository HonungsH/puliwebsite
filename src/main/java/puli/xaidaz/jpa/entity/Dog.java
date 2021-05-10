package puli.xaidaz.jpa.entity;

import javax.persistence.*;
import java.sql.Blob;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Entity
public class Dog {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private String name;
    private LocalDate dateOfBirth;
    private LocalDateTime createdAt;
    private LocalDateTime modifiedAt;
    private String description;
    private String profilePicture;
    private String owner;
    private String pedigree;
    private String linkToSkk;

    @OneToMany(mappedBy = "dog")
    private List<Picture> pictures;

    // Getters and setters start

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getProfilePicture() {
        return profilePicture;
    }

    public void setProfilePicture(String profilePicture) {
        this.profilePicture = profilePicture;
    }

    public List<Picture> getPictures() {
        return pictures;
    }

    public void setPictures(List<Picture> pictures) {
        this.pictures = pictures;
    }

    public String getOwner() {
        return owner;
    }

    public void setOwner(String owner) {
        this.owner = owner;
    }

    public String getPedigree() {
        return pedigree;
    }

    public void setPedigree(String pedigree) {
        this.pedigree = pedigree;
    }

    public String getLinkToSkk() {
        return linkToSkk;
    }

    public void setLinkToSkk(String linkToSkk) {
        this.linkToSkk = linkToSkk;
    }

    // Getters and setters end

}