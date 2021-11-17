package puli.xaidaz.jpa.entity;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "Dog")
public class Dog {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;
    @Column(name = "NAME")
    private String name;
    @Column(name = "BREEDING_NAME")
    private String breedingName;
    @Column(name = "COLOUR")
    private String colour;
    @Column(name = "DATE_OF_BIRTH")
    private LocalDate dateOfBirth;
    @Column(name = "CREATED_AT")
    private LocalDateTime createdAt;
    @Column(name = "MODIFIED_AT")
    private LocalDateTime modifiedAt;
    @Column(name = "PROFILE_PICTURE")
    private String profilePicture;
    @Column(name = "DESCRIPTION")
    private String description;
    @Column(name = "OWNER")
    private String owner;
    @Column(name = "PEDIGREE")
    private String pedigree;
    @Column(name = "LINK_TO_SKK")
    private String linkToSkk;
    @Column(name = "BREEDING_HISTORY")
    private String breedingHistory;

    @OneToMany(fetch=FetchType.LAZY, mappedBy = "dog")
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

    public void setCreatedAt(LocalDateTime created_at) {
        this.createdAt = created_at;
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

    public String getBreedingHistory() {
        return breedingHistory;
    }

    public void setBreedingHistory(String breedingHistory) {
        this.breedingHistory = breedingHistory;
    }

    public String getBreedingName() {
        return breedingName;
    }

    public void setBreedingName(String breedingName) {
        this.breedingName = breedingName;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    // Getters and setters end

}