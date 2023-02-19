package junia.park.core.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import junia.park.core.dao.LocalisationDAO;
import junia.park.core.entity.Localisation;

import java.util.List;

@Service
@Transactional
public class LocalisationService {

    private LocalisationDAO localisationDAO;


    public LocalisationService(final LocalisationDAO localisationDAO) {
        this.localisationDAO = localisationDAO;
    }


    public void deleteAll() {
        localisationDAO.deleteAll();
    }


    public void save(Localisation localisation) {
        localisationDAO.save(localisation);
    }


    public long countAll() {
        return localisationDAO.count();
    }


    public List<Localisation> findAll() {
        return localisationDAO.findAll();
    }
}
