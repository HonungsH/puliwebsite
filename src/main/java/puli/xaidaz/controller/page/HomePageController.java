package puli.xaidaz.controller.page;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import puli.xaidaz.jpa.entity.News;
import puli.xaidaz.jpa.repository.NewsRepository;
import puli.xaidaz.service.api.TextService;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping(value = "/")
public class HomePageController {

    @Autowired
    TextService textService;
    @Autowired
    NewsRepository newsRepository;

    @GetMapping
    public String renderPageLayout(Model model) {
        textService.setTextMapToModel(model, "homepage");

        List<NewsDTO> newsDTOList = newsRepository.findLatestByCreatedAt(3)
                .stream()
                .map(news -> new NewsDTO(news.getTitle(), news.getProfilePicture(), news.getCreatedAt()))
                .collect(Collectors.toList());

        model.addAttribute("newsDTOList", newsDTOList);

        return "homepage";
    }

    @Data
    @AllArgsConstructor
    public static class NewsDTO {
        String title;
        String profilePicture;
        LocalDateTime createdAt;
    }
}
