package puli.website.demo.controller;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import puli.website.demo.jpa.entity.Dog;
import puli.website.demo.jpa.repository.DogRepository;

import java.util.List;

@Controller
@RequestMapping(value = "/about")
public class AboutController {

    @Autowired
    DogRepository dogRepository;

    @GetMapping
    public String renderPageLayout( Model model ) {
        List<Dog> dogs = dogRepository.findAll();
        model.addAttribute("dogs", dogs);
        return "about";
    }
}


