package yncrea.lab04.web;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;
import yncrea.lab04.core.config.AppConfig;
import yncrea.lab04.core.config.DBConfig;
import yncrea.lab04.web.config.WebConfig;

public class Initializer extends AbstractAnnotationConfigDispatcherServletInitializer {

    @Override
    protected Class<?>[] getRootConfigClasses() {
        Class<?>[] arrayRootConfigClass={AppConfig.class, DBConfig.class};
        return arrayRootConfigClass;
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        Class<?>[] arrayServletConfigclasses={WebConfig.class};
        return arrayServletConfigclasses;
    }

    @Override
    protected String[] getServletMappings() {
        String[] arrayServletMapping={"/"};
        return arrayServletMapping;
    }
}
