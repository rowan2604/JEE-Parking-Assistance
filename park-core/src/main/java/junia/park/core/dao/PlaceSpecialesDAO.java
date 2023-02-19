package junia.park.core.dao;

import junia.park.core.entity.PlaceSpeciales;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PlaceSpecialesDAO extends JpaRepository<PlaceSpeciales, Integer> {
}
