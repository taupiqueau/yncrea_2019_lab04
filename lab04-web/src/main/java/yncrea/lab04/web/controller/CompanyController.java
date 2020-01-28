package yncrea.lab04.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CompanyController {

    @RequestMapping(path="/list")
    private String getListOfCompanies(ModelMap modelMap)
    {
        //TODO Suivre les directives d'implémentation sur le Github ;
        return null;
    }

}
