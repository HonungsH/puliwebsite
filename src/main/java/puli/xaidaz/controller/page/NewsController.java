package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import puli.xaidaz.helpers.DateHelper;
import puli.xaidaz.jpa.entity.News;
import puli.xaidaz.jpa.repository.NewsRepository;
import puli.xaidaz.service.api.FileService;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.Comparator;
import java.util.List;

@Controller
@RequestMapping(value = "/nyheter")
public class NewsController {

    @Autowired
    NewsRepository newsRepository;
    @Autowired
    FileService fileService;

    @GetMapping
    public String renderPageLayout(Model model) {
        List<News> allNews = newsRepository.findAll();

        allNews.sort(Comparator.comparing(News::getCreatedAt).reversed());

        model.addAttribute("listOfNews", allNews);

        for (News news : allNews) {
            model.addAttribute("createdAt", DateHelper.dateTimeToString(news.getCreatedAt()));
            model.addAttribute("modifiedAt", DateHelper.dateTimeToString(news.getCreatedAt()));
        }

        return "news";
    }

    @RequestMapping(path = "/nyNyhet")
    public String addNews() {
        return "addNews";
    }

    @RequestMapping(path = "/redigeraNyhet", method = RequestMethod.POST)
    public String editNews(@RequestParam("newsId") long newsId, Model model) {
        News news = newsRepository.findById(newsId).get();

        model.addAttribute("news", news);
        if (news.getProfilePicture() != null) {
            model.addAttribute("profilePictureLabel", new File(news.getProfilePicture()).getName());
        }
        return "addNews";
    }

    @RequestMapping(value = "/sparaNyhet", method = RequestMethod.POST)
    public String saveNews(@RequestParam("profilePictureFile") MultipartFile profilePicture, @Valid @ModelAttribute("News") News news, BindingResult bindingResult) throws IOException {
        if (bindingResult.hasErrors()) {
            return "news";
        }

        if (news.getId() == null) { // new dog
            news.setCreatedAt(LocalDateTime.now());
            news.setModifiedAt(LocalDateTime.now());
            setNewProfilePicture(profilePicture, news);
        } else { // Existing dog
            News previousDog = newsRepository.findById(news.getId()).get();

            if (profilePicture.getOriginalFilename() != null || (!previousDog.getProfilePicture().endsWith(profilePicture.getOriginalFilename()))) {
                fileService.deleteFile(previousDog.getProfilePicture());
                setNewProfilePicture(profilePicture, news);
            }
        }

        news.setModifiedAt(LocalDateTime.now());
        newsRepository.save(news);
        return "redirect:/nyheter";
    }

    private void setNewProfilePicture(MultipartFile profilePicture, News news) throws IOException {
        if (news.getId() == null) {
            newsRepository.save(news);
        }

        if (!profilePicture.getOriginalFilename().isEmpty()) {
            String fileName = fileService.saveFile(profilePicture, news.getTitle() + news.getId().toString());
            news.setProfilePicture(fileName);
        }
    }
}
