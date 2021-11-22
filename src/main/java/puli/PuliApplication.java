package puli;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import javax.servlet.annotation.MultipartConfig;

@SpringBootApplication
@ComponentScan(basePackages = {"puli.xaidaz"})
@EntityScan("puli.xaidaz.jpa.entity")
@EnableJpaRepositories("puli.xaidaz.jpa.repository")
@MultipartConfig
public class PuliApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(PuliApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(PuliApplication.class, args);
    }

    //Uncomment this to reset db..
/*    @Bean
    public FlywayMigrationStrategy clean() {
        return flyway -> {
            flyway.clean();
            flyway.migrate();
        };
    }*/
}