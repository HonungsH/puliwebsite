package puli.xaidaz.jpa.entity;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class ValpKull {

    @Id
    @GeneratedValue(strategy= GenerationType.AUTO)
    private Long id;
    private String motherName;
    private String fatherName;
    private LocalDate dateOfBirth;
    private int amountOfPuppies;
    private String puppies;
    private String puppyPicture;
    private String description;

    // Getters and setters start

    // Getters and setters end

}