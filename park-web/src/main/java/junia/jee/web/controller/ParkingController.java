package junia.jee.web.controller;
import junia.park.core.entity.Parking;
import junia.park.core.entity.Ville;
import junia.park.core.service.ParkingService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

@Controller
public class ParkingController {

    private ParkingService parkingService;

    @GetMapping("/parking/{id}")
    public ModelAndView getParking(@PathVariable("id") int id) {
        ModelAndView mav = new ModelAndView("parking");
        Optional<Parking> parking = parkingService.getParkingById(id);
        mav.addObject("parking", parking);
        return mav;
    }
    @RequestMapping(value = "/form",method = RequestMethod.POST)
    public String submitForm(@ModelAttribute("parking") Parking parking){
        int id=parking.getId();
        return "redirect:parking/"+id;
    }
}

