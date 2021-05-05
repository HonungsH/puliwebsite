package puli.xaidaz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/aboutPuli")
public class AboutPuliController {

    @GetMapping
    public String renderPageLayout() {
        return "aboutPuli";
    }
}
