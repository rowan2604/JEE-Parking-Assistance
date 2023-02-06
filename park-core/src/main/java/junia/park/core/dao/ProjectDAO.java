package junia.park.core.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import junia.park.core.entity.Project;

public interface ProjectDAO extends JpaRepository<Project,Long> {

}
