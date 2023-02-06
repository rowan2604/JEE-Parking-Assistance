package junia.park.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import junia.park.core.entity.BusinessType;

public interface BusinessTypeDAO extends JpaRepository<BusinessType, Long> {

}
