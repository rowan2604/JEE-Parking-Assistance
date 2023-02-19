package junia.park.core.service;

import junia.park.core.dao.LocalisationDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import junia.park.core.dao.ParkingDAO;
import junia.park.core.entity.Parking;

import java.util.Optional;

@Service
@Transactional
public class ParkingService {

    private ParkingDAO parkingDAO;
    private final LocalisationDAO localisationDAO;


    public ParkingService(final ParkingDAO parkingDAO,
                          LocalisationDAO localisationDAO) {
        this.parkingDAO = parkingDAO;
        this.localisationDAO = localisationDAO;
    }


    public void deleteAll() {
        parkingDAO.deleteAll();
    }


    public void save(final Parking parking) {
        parkingDAO.save(parking);
    }


    public long countAll() {
        return parkingDAO.count();
    }

    public Optional<Parking> getParkingById(int id) {
        return parkingDAO.findById(id);
    }
}
