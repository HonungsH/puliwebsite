package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import puli.xaidaz.service.api.TextService;

@Controller
@RequestMapping(value = "/")
public class HomePageController {

    @Autowired
    TextService textService;

    @GetMapping
    public String renderPageLayout(Model model) {
        textService.setTextMapToModel(model, "homepage");
        return "homepage";
    }
}
