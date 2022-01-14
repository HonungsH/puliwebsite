package puli.xaidaz.config;

import org.apache.catalina.Context;
import org.apache.catalina.connector.Connector;
import org.apache.tomcat.util.descriptor.web.SecurityCollection;
import org.apache.tomcat.util.descriptor.web.SecurityConstraint;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.Http403ForbiddenEntryPoint;
import org.springframework.security.web.header.writers.StaticHeadersWriter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Value("${environment}")
    private String environment;

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.inMemoryAuthentication()
                .passwordEncoder(encoder())
                .withUser("Carina").password(encoder().encode("Zabrella")).roles("ADMIN");

        auth.inMemoryAuthentication()
                .passwordEncoder(encoder())
                .withUser("admin").password(encoder().encode("tobyskat92")).roles("ADMIN", "TECHNICAL");
    }

    @Override
    public void configure(WebSecurity web) {
        web.ignoring().antMatchers("/resources/**");
    }

    @Override
    protected void configure(HttpSecurity httpSecurity) throws Exception {
        httpSecurity.authorizeRequests()
                .antMatchers("/puppies**").hasRole("ADMIN")
                .antMatchers("/uploads/**").permitAll()
                .and().formLogin().loginPage("/login")
                .and().logout().logoutSuccessUrl("/").permitAll()
                .and().csrf().disable();

        // Throw 403 instead of redirecting to login page when trying forbidden endpoint
        httpSecurity.exceptionHandling().authenticationEntryPoint(new Http403ForbiddenEntryPoint());

        if (!environment.equalsIgnoreCase("local")) {
            httpSecurity.headers().addHeaderWriter(new StaticHeadersWriter("X-Content-Security-Policy","default-src 'self' xaidaz.com *.xaidaz.com"));
            httpSecurity.requiresChannel().anyRequest().requiresSecure();
        }
    }

    @Bean
    public static PasswordEncoder encoder() {
        return new BCryptPasswordEncoder();
    }
}