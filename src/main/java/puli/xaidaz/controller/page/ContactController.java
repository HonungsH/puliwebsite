package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import puli.xaidaz.service.api.TextService;

import java.util.Locale;

@Controller
@RequestMapping(value = "/kontakt")
public class ContactController {

    @Autowired
    TextService textService;

    @GetMapping
    public String renderPageLayout(Model model, @RequestHeader(HttpHeaders.USER_AGENT) String userAgent) {
        textService.setTextMapToModel(model, "contact");
        model.addAttribute("isAndroid", userAgent.matches("(?i)android"));
        model.addAttribute("isApple", userAgent.matches("(?i)iphone|ipad|ipod"));
        System.out.println("Contact called with. " +userAgent);
        return "contact";
    }
}
