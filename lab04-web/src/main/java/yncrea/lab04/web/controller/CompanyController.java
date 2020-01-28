package yncrea.lab04.web.controller;
import org.springframework.stereotype.Controller;
import yncrea.lab04.core.dao.CompanyDAO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.ModelMap;
import yncrea.lab04.core.entity.Company;

import java.util.List;


@Controller
public class CompanyController {
    private CompanyDAO companyDAO;

    @RequestMapping(path="/list")
    public String getListOfCompanies(ModelMap modelMap)
    {
        final List<Company> companies = companyDAO.findAllWithProjects();
        modelMap.put("companies",companies);
        return "companiesList";
    }
}
