package puli.website.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/puppies")
public class PuppiesController {

    @GetMapping
    public String renderPageLayout() {
        return "puppies";
    }
}
