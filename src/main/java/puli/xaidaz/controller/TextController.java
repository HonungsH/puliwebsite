package puli.xaidaz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import puli.xaidaz.service.api.TextService;

@Controller
@RequestMapping(value = "/text")
public class TextController {

    @Autowired
    private TextService textService;

    @RequestMapping(value = {"/saveText"}, method = RequestMethod.POST)
    @ResponseBody
    public String saveText(@RequestParam(value = "group") String group, @RequestParam(value = "textKey") String textKey, @RequestParam(value = "text") String text) {
        textService.updateText(group, textKey, text);
        return "OK";
    }
}
