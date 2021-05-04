package puli.website.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/aboutPuli")
public class AboutPuliController {

    @GetMapping
    public String renderPageLayout() {
        return "aboutPuli";
    }
}
