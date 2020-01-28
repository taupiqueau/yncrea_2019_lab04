package yncrea.lab04.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import yncrea.lab04.core.dao.CompanyDAO;
import yncrea.lab04.core.entity.Company;

import java.util.List;

@Controller
public class CompanyController {

    private CompanyDAO companyDAO;

    @RequestMapping(path="/list")
    public String getListOfCompanies(ModelMap modelMap)
    {
        final List<Company> companies=companyDAO.findAllWithProjects();
        modelMap.put("companies",companies);
        return "companiesList";
    }


    @RequestMapping(path = "/form")
    public String getForm(ModelMap modelMap)
    {
        Company company=new Company();
        modelMap.addAttribute("company",company);
        return "companyForm";
    }

    @RequestMapping(path = "/form")
    public String submitForm(@ModelAttribute("company")Company company)
    {
        return null;
    }


}
