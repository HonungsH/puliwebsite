package puli.xaidaz.service.api;

import org.springframework.ui.Model;

public interface TextService {

    void updateText(String group, String textKey, String text);

    void setTextMapToModel(Model model, String rootMapping);
}
