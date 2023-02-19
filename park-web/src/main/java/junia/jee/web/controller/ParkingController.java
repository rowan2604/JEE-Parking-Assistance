package junia.jee.web.controller;

import junia.park.core.entity.Localisation;
import junia.park.core.entity.Parking;
import junia.park.core.service.LocalisationService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;
import java.util.Optional;

@Controller
public class ParkingController {
    public ParkingController(LocalisationService localisationService) {
        this.localisationService = localisationService;
    }

    LocalisationService localisationService;

    @RequestMapping(value = "/parking/{id}",method = RequestMethod.GET)
    public String getParking(@PathVariable("id") int id, ModelMap modelMap) throws IOException {
        Optional<Localisation> localisation = localisationService.getLocalisationById(id);
        Parking parking = localisation.get().getParking();
        String currentPath = new java.io.File(".").getCanonicalPath();
        modelMap.addAttribute("parking", parking);
        modelMap.addAttribute("localisation", localisation);
        modelMap.addAttribute("adresse", localisation.get().getAdresse());
        modelMap.addAttribute("currentDir", currentPath);
        String photoPath = localisation.get().getPhoto();
        photoPath = photoPath.substring(5);
        modelMap.addAttribute("photoPath", photoPath);
        return "parking";
    }
}

