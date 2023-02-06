package junia.park.core.service;

import junia.park.core.entity.Ville;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import junia.park.core.dao.VilleDAO;

@Service
@Transactional
public class VilleService {

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
}
