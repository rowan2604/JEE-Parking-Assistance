package junia.park.core.service;

import junia.park.core.dao.VilleDAO;
import junia.park.core.entity.Ville;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;
import java.util.TreeMap;

@Service
@Transactional
public class VilleService {
    private final static Logger LOGGER = LoggerFactory.getLogger(VilleService.class);
    private VilleDAO villeDAO;


    public VilleService(final VilleDAO villeDAO) {
        this.villeDAO = villeDAO;
    }


    public void deleteAll() {
       villeDAO.deleteAll();
    }


    public void save(Ville ville) {
        villeDAO.save(ville);
    }


    public long countAll() {
       return villeDAO.count();
    }
    public Map<String, Integer> getAllParking() {
        Map<String,Integer> parkingCount = new TreeMap<>();
        final List<Ville> villes = villeDAO.findAllParking();
        for(Ville ville :villes){
            LOGGER.info(ville.getLocalisations().size()+"aled");
            parkingCount.put(ville.getNom(), ville.getLocalisations().size());
        }
        return parkingCount;
    }

    public List<Ville> findAllParking(){
        return villeDAO.findAllParking();
    }

    public void deleteById(int id)  {
        villeDAO.deleteById(id);
    }

}
