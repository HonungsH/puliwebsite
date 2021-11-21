package puli.xaidaz.controller.page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.util.Pair;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
import java.util.ArrayList;
import java.util.List;

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
    public String renderPageLayout(Model model) {
        List<Album> albumList = albumRepository.findAll();
        if (albumList.isEmpty())
            return "pictures";

        List<Pair<String, String>> albumTitleAndPicture = new ArrayList<>();
        for (Album album : albumList) {
            String previewFilePath = album.getPictures().isEmpty()? "/images/dogs/bild_saknas.png" : album.getPictures().get(0).getFilePath();
            albumTitleAndPicture.add(Pair.of(album.getTitle(), previewFilePath));
        }
        model.addAttribute("albumTitleAndPicture", albumTitleAndPicture);
        return "pictures";
    }

    @RequestMapping(path = "/nyttAlbum")
    public String nyAlbum(Model model) {
        model.addAttribute("profilePictureLabel", "Ingen fil vald");
        return "newAlbum";
    }

    @RequestMapping(path = "/sparaBild", method = RequestMethod.POST)
    public String savePicture(@RequestParam("file") MultipartFile file, @RequestParam("albumTitle") String albumTitle) throws IOException {
        Album album = albumRepository.findByTitle(albumTitle);
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
        Album album = albumRepository.findByTitle(albumTitle);
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
    @RequestMapping(path = "/taBortBild", method = RequestMethod.POST)
    public String deletePicture(@RequestParam("title") String title, @RequestParam("albumTitle") String albumTitle) {
        Picture picture = pictureRepository.findByTitleAndAlbumTitle(title, albumTitle);
        pictureRepository.delete(picture);
        return "OK";
    }

    @ResponseBody
    @RequestMapping(path = "/taBortAlbum", method = RequestMethod.POST)
    public String deleteAlbum(@RequestParam("albumTitle") String albumTitle) {
        Album album = albumRepository.findByTitle(albumTitle);
        pictureRepository.deleteByAlbumId(album.getId());
        albumRepository.deleteByTitle(albumTitle);
        return "OK";
    }

    @RequestMapping(path = "/album/{albumTitle}", method = RequestMethod.GET)
    public String showAlbum(@PathVariable("albumTitle") String albumTitle, Model model) {
        Album album = albumRepository.findByTitle(albumTitle);
        model.addAttribute("albumTitle", albumTitle);
        model.addAttribute("description", album.getDescription());

        List<Picture> picutures = pictureRepository.findByAlbumTitle(albumTitle);
        List<Pair<String, String>> titleAndPicture = new ArrayList<>();
        for (Picture picture : picutures) {
            titleAndPicture.add(Pair.of(picture.getTitle(), picture.getFilePath()));
        }
        model.addAttribute("titleAndPicture", titleAndPicture);
        model.addAttribute("albumTitle", albumTitle);

        return "album";
    }
}
