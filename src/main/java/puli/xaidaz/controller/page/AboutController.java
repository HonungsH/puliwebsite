package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.repository.DogRepository;

import java.util.List;

@Controller
@RequestMapping(value = "/about")
public class AboutController {

    @Autowired
    DogRepository dogRepository;

    @GetMapping
    public String renderPageLayout( Model model ) {
        List<Dog> dogs = dogRepository.findAll();
        model.addAttribute("allDogs", dogs);
        return "about";
    }
}


