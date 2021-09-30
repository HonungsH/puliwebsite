package puli.xaidaz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.repository.DogRepository;

import javax.servlet.http.Part;
import java.io.IOException;

@Service
public class DogService {

    static final String SAVE_PATH = "\\images\\dogs";

    @Autowired
    private DogRepository dogRepository;


    public void saveDog(Dog dog) {
        dogRepository.save(dog);
    }

    public void uploadFile(Part file) throws IOException {
        file.write("doggy.jpg");
    }

    public void getProfilePicture(String path) {

    }
}