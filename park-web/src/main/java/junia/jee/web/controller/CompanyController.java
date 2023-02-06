package junia.jee.web.controller;

import junia.park.core.entity.Company;
import junia.park.core.service.CompanyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class CompanyController {
    public CompanyController(CompanyService companyService) {
        this.companyService = companyService;
    }

    CompanyService companyService;
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String getListofCompanies(ModelMap modelMap){
        List<Company> companies = companyService.findAllWithProjects();
        modelMap.addAttribute("companies",companies);
        return "companiesList";
    }
    @RequestMapping(value = "/form")

    public String getForm(ModelMap modelMap){
        Company compagny = new Company();
        modelMap.addAttribute("company",compagny);
        return "companyForm";
    }
    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String submitForm(@ModelAttribute("company") Company company){
        companyService.save(company);
        return "redirect:list";
    }

    public String deleteCompany(long id){
        companyService.deleteById(id);
        return "redirect::list";
    }



}
