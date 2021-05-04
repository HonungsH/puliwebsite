package puli.website.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/ourDogs")
public class OurDogsController {

    @GetMapping
    public String renderPageLayout() {
        return "ourDogs";
    }
}
