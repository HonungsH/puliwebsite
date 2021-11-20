package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import puli.xaidaz.jpa.entity.Album;
import puli.xaidaz.jpa.entity.Picture;
import puli.xaidaz.jpa.repository.AlbumRepository;
import puli.xaidaz.jpa.repository.PictureRepository;
import puli.xaidaz.service.api.FileService;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;

@Controller
@RequestMapping(value = "/bilder")
public class PicturesController {

    @Autowired
    FileService fileService;
    @Autowired
    AlbumRepository albumRepository;
    @Autowired
    PictureRepository pictureRepository;

    @GetMapping
    public String renderPageLayout() {
        return "pictures";
    }

    @RequestMapping(path = "/nyttAlbum")
    public String nyAlbum(Model model) {
        model.addAttribute("profilePictureLabel", "Ingen fil vald");
        return "newAlbum";
    }

    @RequestMapping(path = "/sparaBild", method = RequestMethod.POST)
    public String savePicture(@RequestParam("file") MultipartFile file, @RequestParam("albumTitle") String albumTitle) throws IOException {
        Album album = albumRepository.findByName(albumTitle);
        if (album == null) {
            album = new Album();
            album.setTitle(albumTitle);
            album.setCreatedAt(LocalDateTime.now());
            album.setModifiedAt(LocalDateTime.now());
            albumRepository.save(album);
        }

        Picture picture = new Picture();
        picture.setCreatedAt(LocalDateTime.now());
        picture.setModifiedAt(LocalDateTime.now());
        picture.setAlbum(album);
        picture.setTitle(file.getOriginalFilename());
        String filePath = fileService.saveFile(file, "albums" +File.separator+albumTitle);
        picture.setFilePath(filePath);
        pictureRepository.save(picture);

        return "newAlbum";
    }

    @ResponseBody
    @RequestMapping(path = "/sparaAlbum", method = RequestMethod.POST)
    public String saveAlbum(@RequestParam("albumTitle") String albumTitle, @RequestParam("description") String description) {
        Album album = albumRepository.findByName(albumTitle);
        if (album == null) {
            album = new Album();
            album.setTitle(albumTitle);
            album.setCreatedAt(LocalDateTime.now());
            album.setModifiedAt(LocalDateTime.now());
        }
        album.setDescription(description);
        albumRepository.save(album);
        return "OK";
    }

    @ResponseBody
    @RequestMapping(path = "/taBort", method = RequestMethod.POST)
    public String deletePicture(@RequestParam("title") String title, @RequestParam("albumTitle") String albumTitle) {
        Picture picture = pictureRepository.findByTitleAndAlbum(title, albumTitle);
        pictureRepository.delete(picture);
        return "OK";
    }
}
