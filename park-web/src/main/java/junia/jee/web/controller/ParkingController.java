package junia.jee.web.controller;
import junia.park.core.entity.Localisation;
import junia.park.core.entity.Parking;
import junia.park.core.entity.Ville;
import junia.park.core.service.LocalisationService;
import junia.park.core.service.ParkingService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class ParkingController {

    private ParkingService parkingService;
    private LocalisationService localisationService;


    @GetMapping("/parking/{id}")
    public String getParking(@PathVariable("id") int id, ModelMap modelMap) {
        Optional<Parking> parking = parkingService.getParkingById(id);
        modelMap.addAttribute("parking", parking);
        return "parking";
    }
}

