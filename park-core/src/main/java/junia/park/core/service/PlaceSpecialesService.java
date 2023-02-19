package junia.park.core.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import junia.park.core.dao.PlaceSpecialesDAO;
import junia.park.core.entity.PlaceSpeciales;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Service
@Transactional
public class PlaceSpecialesService {

    private PlaceSpecialesDAO placeSpecialesDAO;


    public PlaceSpecialesService(final PlaceSpecialesDAO placeSpecialesDAO) {
        this.placeSpecialesDAO = placeSpecialesDAO;
    }


    public void deleteAll() {
        placeSpecialesDAO.deleteAll();
    }


    public void save(final PlaceSpeciales placeSpeciales) {
        placeSpecialesDAO.save(placeSpeciales);
    }


    public long countAll() {
        return placeSpecialesDAO.count();
    }





    public void deleteById(final int id) {
        placeSpecialesDAO.deleteById(id);
    }
}
