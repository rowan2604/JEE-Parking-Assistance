package junia.park.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import junia.park.core.entity.Customer;

public interface CustomerDAO extends JpaRepository<Customer, Long> {

}
