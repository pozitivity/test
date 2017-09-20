package tatiana.gorbunova.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tatiana.gorbunova.test.entity.Score;
import tatiana.gorbunova.test.repository.ScoreRepository;

import java.util.List;

@Service
public class ScoreService {

    @Autowired
    ScoreRepository scoreRepository;

    public List<Score> getScores() {
        return scoreRepository.findAll();
    }

    public Score getScoreByDistrictIdAndIndicatorId(Long districtId, Long indicatorId) {
        return scoreRepository.getByDistrictIdAndIndicatorId(districtId, indicatorId);
    }
}
