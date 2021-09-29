package puli;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;

import javax.servlet.annotation.MultipartConfig;

@SpringBootApplication
@EntityScan( basePackages = {"puli.xaidaz.jpa.entity"} )
@ComponentScan ("puli.xaidaz")
@MultipartConfig(location = "\\images\\dogs\\")
public class PuliApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(PuliApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(PuliApplication.class, args);
    }

}
