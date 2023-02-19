package junia.jee.web.controller;
import junia.park.core.entity.Ville;
import junia.park.core.service.VilleService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class VilleController {
    public VilleController(VilleService villeService) {
        this.villeService = villeService;
    }

    VilleService villeService;
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public String getListofVilles(ModelMap modelMap){
        List<Ville> villes = villeService.findAllParking();
        modelMap.addAttribute("villes",villes);
        return "villesList";
    }
    @RequestMapping(value = "/form")

    public String getForm(ModelMap modelMap){
        Ville ville = new Ville();
        modelMap.addAttribute("ville",ville);
        return "villeForm";
    }
    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String submitForm(@ModelAttribute("ville") Ville ville){
        villeService.save(ville);
        return "redirect:list";
    }

    public String deletePlaceSpeciales(int id){
        villeService.deleteById(id);
        return "redirect::list";
    }



}
