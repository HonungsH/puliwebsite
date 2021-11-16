package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.repository.DogRepository;
import puli.xaidaz.service.api.FileService;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping(value = "/hundar")
public class OurDogsController {

    @Autowired DogRepository dogRepository;
    @Autowired FileService fileService;

    @GetMapping
    public String renderPageLayout(HttpServletRequest request, Model model) {

        List<Dog> allDogs = dogRepository.findAll();

        model.addAttribute("listOfDoges", allDogs);

        return "ourDogs";
    }

    @RequestMapping(path = "/hund")
    public String renderDog(@RequestParam("hundNamn") String dogName, Model model) {

        List<Dog> dogsWithName = dogRepository.findByName(dogName);

        model.addAttribute("dog", dogsWithName.get(0));
        return "dogProfile";
    }

    @RequestMapping(path = "/nyHund")
    public String addDog() {
        return "newDog";
    }

    @RequestMapping(value = "/sparaHund", method = RequestMethod.POST)
    public String saveDog(@RequestParam("profilePictureFile") MultipartFile profilePicture, @Valid @ModelAttribute("dog") Dog dog) throws IOException {

        dog.setCreatedAt(LocalDateTime.now());
        dog.setModifiedAt(LocalDateTime.now());
        //dog.setDateOfBirth(LocalDate.now());
        dog = dogRepository.save(dog);

        String fileName = fileService.saveFile(profilePicture, dog.getName() + dog.getId().toString());

        dog.setProfilePicture(fileName);
        dogRepository.save(dog);

        return "redirect:/hundar";
    }

    @RequestMapping(path = "/redigeraHund")
    public String editDog(@RequestParam("hundNamn") String dogName, Model model) {
        //if (result.hasErrors()) {

        //return "newDog";
        //}
        //dogService.saveDog(dog);
        return "ourDogs";
    }
}