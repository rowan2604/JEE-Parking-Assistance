package junia.park.core.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import junia.park.core.dao.ParkingDAO;
import junia.park.core.entity.Parking;

import java.util.Optional;

@Service
@Transactional
public class ParkingService {

    private ParkingDAO parkingDAO;


    public ParkingService(final ParkingDAO parkingDAO) {
        this.parkingDAO = parkingDAO;
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
