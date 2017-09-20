package tatiana.gorbunova.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import tatiana.gorbunova.test.entity.District;

@Repository
public interface DistrictRepository extends JpaRepository<District, Long> {
}
