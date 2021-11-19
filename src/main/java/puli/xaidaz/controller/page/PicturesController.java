package puli.xaidaz.controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/bilder")
public class PicturesController {

    @GetMapping
    public String renderPageLayout() {
        return "pictures";
    }
}
