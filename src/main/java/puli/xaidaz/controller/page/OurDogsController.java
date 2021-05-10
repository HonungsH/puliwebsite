package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.repository.DogRepository;
import puli.xaidaz.service.DogService;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping(value = "/hundar")
public class OurDogsController {

    @Autowired
    DogRepository dogRepository;

    DogService dogService;

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

    @RequestMapping(path = "/nyHund")
    public String addDog() {
        return "newDog";
    }

    @RequestMapping(value = "/sparaHund", method = RequestMethod.POST)
    public String saveDog(@Valid @ModelAttribute("dog") Dog dog, BindingResult result, ModelMap model) {
        if (result.hasErrors()) {
            model.addAttribute("errorMsg", "Dog could not be added");
            return "newDog";
        }
        dogService.saveDog(dog);
        return "ourDogs";
    }
}