package puli.xaidaz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.entity.Text;
import puli.xaidaz.jpa.repository.DogRepository;
import puli.xaidaz.jpa.repository.TextRepository;
import puli.xaidaz.service.api.TextService;

import java.util.Map;

@Service
public class DogService {

    @Autowired
    private DogRepository dogRepository;


    public void saveDog(Dog dog) {
        dogRepository.save(dog);
    }

}