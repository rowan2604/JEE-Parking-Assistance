package junia.park.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import junia.park.core.entity.Parking;

public interface ParkingDAO extends JpaRepository<Parking, Integer> {

}
