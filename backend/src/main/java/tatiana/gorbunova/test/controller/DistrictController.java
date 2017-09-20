package tatiana.gorbunova.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import tatiana.gorbunova.test.entity.District;
import tatiana.gorbunova.test.service.DistrictService;

import java.util.List;

@RestController
@RequestMapping(value = "/api/district")
public class DistrictController {

    @Autowired
    DistrictService districtService;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public List<District> getDistricts() {
        return districtService.getDistricts();
    }
}
