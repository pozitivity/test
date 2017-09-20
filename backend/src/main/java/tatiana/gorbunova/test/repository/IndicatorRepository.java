package tatiana.gorbunova.test.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import tatiana.gorbunova.test.entity.Indicator;

import java.util.List;

@Repository
public interface IndicatorRepository extends JpaRepository<Indicator, Long> {

    @Query("select i from Indicator i where i.parentId = 0")
    List<Indicator> getPurposeIndicators();

    @Query("select i from Indicator i where i.parentId = :parentId")
    List<Indicator> getIndicatorsByParentId(@Param("parentId") Long parentId);
}
