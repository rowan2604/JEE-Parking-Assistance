package junia.park.core.dao;

import junia.park.core.entity.Ville;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface VilleDAO extends JpaRepository<Ville, Integer> {
    @Query("SELECT DISTINCT c FROM Ville c LEFT JOIN FETCH c.localisations")
    List<Ville> findAllParking();

}
