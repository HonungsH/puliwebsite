package puli.xaidaz.jpa.repository;

import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit4.SpringRunner;
import puli.xaidaz.jpa.entity.Dog;

import java.util.List;

import static org.junit.Assert.assertEquals;

@RunWith(SpringRunner.class)
@DataJpaTest
public class DogRepositoryTest {

    @Autowired
    private DogRepository dogRepository;

    //@Test
    public void dbTest() {
        Dog dog = new Dog();
        dog.setName("Fido the finnish lapphund");

        dogRepository.save(dog);

        List<Dog> dogs = dogRepository.findByName("Fido the finnish lapphund");


        assertEquals(1, dogs.size());
//        assertEquals("Mary", contacts.get(0).getFirstName());
//        assertEquals("Zheng", contacts.get(0).getLastName());
//        assertEquals("test@test.com", contacts.get(0).getEmail());
//        assertEquals(PhoneType.HOME, contacts.get(0).getPhoneType());
//        assertEquals("6365272943", contacts.get(0).getPhoneNumber());
//        assertEquals(1, contacts.get(0).getNotes().size());
//        assertEquals("She is a java geek", contacts.get(0).getNotes().get(0).getMessage());
    }
}
