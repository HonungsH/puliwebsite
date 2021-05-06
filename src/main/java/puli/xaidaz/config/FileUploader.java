package puli.xaidaz.config;

import com.mysql.cj.jdbc.Blob;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Component;
import puli.xaidaz.jpa.entity.Dog;
import puli.xaidaz.jpa.repository.DogRepository;

import javax.annotation.PostConstruct;
import javax.sql.rowset.serial.SerialBlob;
import java.io.FileInputStream;
import java.io.IOException;
import java.sql.SQLException;

@Component
public class FileUploader {

    @Autowired
    DogRepository dogRepository;

    @PostConstruct
    public void uploadFiles() throws IOException, SQLException {
        Resource resource = new ClassPathResource("/images/harry.png");
        FileInputStream inputStream = new FileInputStream(resource.getFile());
        byte[] blob = IOUtils.toByteArray(inputStream);

        Dog harry = dogRepository.findByName("Harry").get(0);
        harry.setProfilePicture(new SerialBlob(blob));
        dogRepository.save(harry);
    }
}
