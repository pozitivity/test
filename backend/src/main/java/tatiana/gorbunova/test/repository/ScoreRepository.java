package tatiana.gorbunova.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import tatiana.gorbunova.test.entity.Score;

import java.util.List;

@Repository
public interface ScoreRepository extends JpaRepository<Score, Long> {

    Score getByDistrictIdAndIndicatorId(Long districtId, Long indicatorId);
}
