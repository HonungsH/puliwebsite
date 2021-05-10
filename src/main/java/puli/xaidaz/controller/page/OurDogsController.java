package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.repository.DogRepository;

import java.util.List;

@Controller
@RequestMapping(value = "/hundar")
public class OurDogsController {

    @Autowired
    DogRepository dogRepository;

    @GetMapping
    public String renderPageLayout(Model model) {

        List<Dog> allDogs = dogRepository.findAll();

        model.addAttribute("listOfDoges", allDogs);

        return "ourDogs";
    }

    @RequestMapping(path = "/hund")
    void renderDog(@RequestParam("hundNamn") String dogName, Model model) {

        List<Dog> allDogs = dogRepository.findAll();

        model.addAttribute("listOfDoges", allDogs);

    }

    void addDog(@RequestParam("hundNamn") String dogName, Model model) {
    }
}