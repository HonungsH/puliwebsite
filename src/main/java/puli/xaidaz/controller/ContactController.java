package puli.xaidaz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import puli.xaidaz.jpa.entity.Text;
import puli.xaidaz.jpa.repository.TextRepository;

import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/contact")
public class ContactController {

    @Autowired
    TextRepository textRepository;

    @GetMapping
    public String renderPageLayout(Model model) {
        ContactController.class.getAnnotation(RequestMapping.class).value();
        Map<String, String> texts = textRepository.findTextKeyAndTextByGroup("contact");
        model.addAttribute("textMap", texts);
        return "contact";
    }
}
