package kz.iitu.SuperEyesApp;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@SpringBootApplication
public class SuperEyesAppApplication {
	
//	@Bean
//    WebMvcConfigurer configurer () {
//        return new WebMvcConfigurerAdapter() {
//            @Override
//            public void addResourceHandlers (ResourceHandlerRegistry registry) {
//                registry.addResourceHandler("/static/**").
//                          addResourceLocations("classpath:/static/");
//            }
//        };
//    }
	
	public static void main(String[] args) {
		SpringApplication.run(SuperEyesAppApplication.class, args);
	}
}
