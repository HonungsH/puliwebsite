package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import puli.xaidaz.commands.NewsCommand;
import puli.xaidaz.helpers.DateHelper;
import puli.xaidaz.jpa.entity.News;
import puli.xaidaz.jpa.repository.NewsRepository;
import puli.xaidaz.service.api.FileService;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
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
        List<NewsCommand> newsCommands = mapNewsToCommand(allNews);
        model.addAttribute("listOfNews", newsCommands);
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

    @ResponseBody
    @RequestMapping(value = "/taBort", method = RequestMethod.POST)
    public String deleteNews(@RequestParam("id") long id) {
        newsRepository.findById(id).ifPresent( d -> {
            if (d.getProfilePicture() != null) {
                fileService.deleteFile(d.getProfilePicture());
            }
            newsRepository.delete(d);
        });
        return "OK";
    }

    @RequestMapping(value = "/sparaNyhet", method = RequestMethod.POST)
    public String saveNews(@RequestParam("profilePictureFile") MultipartFile profilePicture, @ModelAttribute("newsCommand") NewsCommand newsCommand, BindingResult bindingResult) throws IOException {
        if (bindingResult.hasErrors()) {
            return "news";
        }
        News news = newsRepository.findById(newsCommand.id).get();

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

    private List<NewsCommand> mapNewsToCommand(List<News> allNews) {
        List<NewsCommand> newsCommands = new ArrayList<>();

        for (News news : allNews) {
            newsCommands.add(new NewsCommand(news));
        }

        return newsCommands;
    }
}
