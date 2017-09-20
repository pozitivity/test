package tatiana.gorbunova.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tatiana.gorbunova.test.entity.Indicator;
import tatiana.gorbunova.test.repository.IndicatorRepository;

import java.util.List;

@Service
public class IndicatorService {

    @Autowired
    IndicatorRepository indicatorRepository;

    public List<Indicator> getIndicators() {
        return indicatorRepository.findAll();
    }

    public List<Indicator> getPurpose() {
        return indicatorRepository.getPurposeIndicators();
    }

    public List<Indicator> getIndicatorsByParentId(Long parentId) {
        return indicatorRepository.getIndicatorsByParentId(parentId);
    }
}
