package tatiana.gorbunova.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import tatiana.gorbunova.test.entity.Score;
import tatiana.gorbunova.test.service.ScoreService;

import java.util.List;

@RestController
@RequestMapping("/api/score")
public class ScoreController {

    @Autowired
    ScoreService scoreService;

    @RequestMapping(path = "/all", method = RequestMethod.GET)
    public List<Score> getScore() {
        return scoreService.getScores();
    }

    @RequestMapping(path = "/bydistrict/{districtId}/byindicator/{indicatorId}", method = RequestMethod.GET)
    public Score getScoreByDistrictAndByIndicator(@PathVariable("districtId") Long districtId,
                                                  @PathVariable("indicatorId") Long indicatorId) {
        return scoreService.getScoreByDistrictIdAndIndicatorId(districtId, indicatorId);
    }
}