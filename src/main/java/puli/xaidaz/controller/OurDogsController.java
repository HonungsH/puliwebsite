package puli.xaidaz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/ourDogs")
public class OurDogsController {

    @GetMapping
    public String renderPageLayout() {
        return "ourDogs";
    }
}
