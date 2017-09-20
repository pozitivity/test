package tatiana.gorbunova.test.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tatiana.gorbunova.test.entity.District;
import tatiana.gorbunova.test.repository.DistrictRepository;

import java.util.List;

@Service
public class DistrictService {

    @Autowired
    DistrictRepository districtRepository;

    public List<District> getDistricts() {
        return districtRepository.findAll();
    }
}
