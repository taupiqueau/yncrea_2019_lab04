package yncrea.lab04.web.config;

import com.shieldsolutions.velocity.view.VelocityConfigurer;
import com.shieldsolutions.velocity.view.VelocityViewResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@EnableWebMvc
@Configuration
@ComponentScan(value="yncrea.lab04.web.controller")
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/webjars/**").addResourceLocations("/webjars/");
    }

    @Bean
    public VelocityConfigurer velocityConfigurer()
    {
        VelocityConfigurer myVelocityConfigurer=new VelocityConfigurer();
        myVelocityConfigurer.setResourceLoaderPath("/WEB-INF/velocity");
        return myVelocityConfigurer;
    }

    @Bean
    public VelocityViewResolver velocityViewResolver()
    {
        VelocityViewResolver myVelocityViewResolver=new VelocityViewResolver();
        myVelocityViewResolver.setSuffix(".vm");
        return myVelocityViewResolver;
    }
}
