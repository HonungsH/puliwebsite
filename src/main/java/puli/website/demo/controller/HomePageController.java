package puli.website.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/")
public class HomePageController {

    @GetMapping
    public ModelAndView renderPageLayout() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("welcome.html");
        mv.getModel().put("data", "Welcome home man");

        return mv;
    }
}
