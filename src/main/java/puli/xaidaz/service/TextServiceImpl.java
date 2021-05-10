package puli.xaidaz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import puli.xaidaz.jpa.entity.Text;
import puli.xaidaz.jpa.repository.TextRepository;
import puli.xaidaz.service.api.TextService;

import java.util.Map;

@Service
public class TextServiceImpl implements TextService {

    @Autowired
    private TextRepository textRepository;

    @Override
    public void setTextMapToModel(Model model, String pageName) {
        Map<String, String> texts = textRepository.findTextKeyAndTextByGroup(pageName);
        model.addAttribute("textMap", texts);
        model.addAttribute("pageGroup", pageName);
    }

    @Override
    public void updateText(String group, String textKey, String text) {
        Text t = textRepository.findByGroupAndTextKey(group, textKey).get(0);
        t.setText(text);
        textRepository.save(t);
    }
}
