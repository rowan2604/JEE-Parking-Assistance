package junia.jee.web.controller;

import junia.park.core.entity.PlaceSpeciales;
import junia.park.core.service.PlaceSpecialesService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class PlaceSpecialesController {
    public PlaceSpecialesController(PlaceSpecialesService placeSpecialesService) {
        this.placeSpecialesService = placeSpecialesService;
    }

    PlaceSpecialesService placeSpecialesService;
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String getListofCompanies(ModelMap modelMap){
        List<PlaceSpeciales> companies = placeSpecialesService.findAllWithProjects();
        modelMap.addAttribute("companies",companies);
        return "companiesList";
    }
    @RequestMapping(value = "/form")

    public String getForm(ModelMap modelMap){
        PlaceSpeciales compagny = new PlaceSpeciales();
        modelMap.addAttribute("placeSpeciales",compagny);
        return "placeSpecialesForm";
    }
    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String submitForm(@ModelAttribute("placeSpeciales") PlaceSpeciales placeSpeciales){
        placeSpecialesService.save(placeSpeciales);
        return "redirect:list";
    }

    public String deletePlaceSpeciales(long id){
        placeSpecialesService.deleteById(id);
        return "redirect::list";
    }



}
