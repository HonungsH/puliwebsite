package puli.xaidaz.service.api;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface FileService {

    String saveFile(MultipartFile file, String subPath) throws IOException;

    byte[] getFile(String filename);
}
