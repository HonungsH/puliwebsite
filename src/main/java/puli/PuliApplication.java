package puli;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.autoconfigure.flyway.FlywayMigrationStrategy;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.io.File;

import javax.servlet.annotation.MultipartConfig;

@SpringBootApplication
@ComponentScan(basePackages =  {"puli.xaidaz"})
@EntityScan("puli.xaidaz.jpa.entity")
@EnableJpaRepositories("puli.xaidaz.jpa.repository")
@MultipartConfig(location = "\\images\\dogs\\")
public class PuliApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(PuliApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(PuliApplication.class, args);
    }

//    @Bean
//    public ServletWebServerFactory servletWebServerFactory(){
//        TomcatServletWebServerFactory servletWebServerFactory = new TomcatServletWebServerFactory();
////        servletWebServerFactory.setDocumentRoot(new File(documentRoot));
//        return new TomcatServletWebServerFactory();
//    }


//    @Bean
//    public FlywayMigrationStrategy clean() {
//        return flyway -> {
//            flyway.clean();
//            flyway.migrate();
//        };
//    }
}
