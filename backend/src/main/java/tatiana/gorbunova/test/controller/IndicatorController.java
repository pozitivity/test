package tatiana.gorbunova.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import tatiana.gorbunova.test.entity.Indicator;
import tatiana.gorbunova.test.service.IndicatorService;

import java.util.List;

@RestController
@RequestMapping("/api/indicator")
public class IndicatorController {

    @Autowired
    IndicatorService indicatorService;

    @RequestMapping(path = "/purpose", method = RequestMethod.GET)
    public List<Indicator> getPurpose() {
        return indicatorService.getPurpose();
    }

    @RequestMapping(path = "/byparent/{parentId}", method = RequestMethod.GET)
    public List<Indicator> getIndicatorsByParent(@PathVariable("parentId") Long parentId) {
        return indicatorService.getIndicatorsByParentId(parentId);
    }

    @RequestMapping(path = "", method = RequestMethod.GET)
    public List<Indicator> getAll() {
        return indicatorService.getIndicators();
    }
}
