package yncrea.lab04.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import yncrea.lab04.core.entity.Company;
import yncrea.lab04.core.service.CompanyService;

import java.util.List;


@Controller
public class CompanyController {

    static final Logger logger = LoggerFactory.getLogger(CompanyController.class);
    private CompanyService companyService;

    public CompanyController(CompanyService companyService) {
        logger.info("Utilisation du constructeur de CompanyController.");
        this.companyService = companyService;
    }

    @RequestMapping(path="/list")
    public String getListOfCompanies(ModelMap modelMap)
    {
        logger.info("Utilisation du getListOfCompanies de CompanyController.");
        final List<Company> companies=companyService.findAllWithProjects();
        modelMap.put("companies",companies);
        return "companiesList";
    }


    @RequestMapping(path = "/form")
    public String getForm(ModelMap modelMap)
    {
        logger.info("Utilisation du getForm de CompanyController.");
        Company company=new Company();
        modelMap.put("company",company);
        return "companyForm";
    }


    @RequestMapping(path = "/form",method = RequestMethod.POST)
    public String submitForm(@ModelAttribute("company")Company company)
    {
        logger.info("Utilisation du submitForm de CompanyController.");
        logger.info("Company : {}",company.getName());
        companyService.save(company);
        return "redirect:list";
    }


    @RequestMapping("/{id}/delete")
    public String deleteCompany(@PathVariable(value="id") String id)
    {
        logger.info("Utilisation du deleteCompany de CompanyController.");
        logger.info("ID company deleted : {} ;",id);
        long idCompany=Long.valueOf(id);
        companyService.deleteById(idCompany);
        return "redirect:/list";
    }


}
