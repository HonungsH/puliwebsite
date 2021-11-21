package puli.xaidaz.service;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import puli.xaidaz.service.api.FileService;

import javax.annotation.PostConstruct;
import java.io.File;
import java.io.IOException;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Service
public class FileServiceImpl implements FileService {

    private final Path root = Paths.get("uploads");
    private final Path albums= Paths.get("uploads/albums");

    @PostConstruct
    public void init() throws IOException {
        createDirectoryIfNotExists(root);
        createDirectoryIfNotExists(albums);
    }

    @Override
    public String saveFile(MultipartFile file, String subPath) throws IOException {
        String path = root + File.separator + subPath;
        createDirectoryIfNotExists(path);

        String fileName = path + File.separator + file.getOriginalFilename();
        file.transferTo(Paths.get(fileName));

        return File.separator + fileName;
    }

    @Override
    public boolean deleteFile(String path) {
        return new File(path).delete();
    }

    @Override
    public byte[] getFile(String filename) {
        return new byte[0];
    }

    private void createDirectoryIfNotExists(String path) throws IOException {
        createDirectoryIfNotExists(Paths.get(path));
    }

    private void createDirectoryIfNotExists(Path path) throws IOException {
        try {
            Files.createDirectory(path);
        } catch (FileAlreadyExistsException e) {
            System.out.println("Uploads folder already exists. Do nothing.");
        }
    }
}
