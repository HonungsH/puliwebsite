package puli.xaidaz.service.api;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface FileService {

    String saveFile(MultipartFile file, String subPath) throws IOException;

    boolean deleteFile(String path);

    byte[] getFile(String filename);
}
