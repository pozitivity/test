package tatiana.gorbunova.test.entity;

import org.hibernate.annotations.Type;
import org.hibernate.annotations.TypeDef;
import org.hibernate.annotations.TypeDefs;
import tatiana.gorbunova.test.hibernateUserType.JsonCustomType;

import javax.persistence.*;
import java.util.HashMap;

@Entity
@Table(name = "score")
@TypeDefs({@TypeDef( name= "JsonObject", typeClass = JsonCustomType.class)})
public class Score {
    private Long id;
    private Long districtId;
    private Long indicatorId;
    private HashMap valueByYear;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Column(name = "district_id")
    public Long getDistrictId() {
        return districtId;
    }

    public void setDistrictId(Long districtId) {
        this.districtId = districtId;
    }

    @Column(name = "indicator_id")
    public Long getIndicatorId() {
        return indicatorId;
    }

    public void setIndicatorId(Long indicatorId) {
        this.indicatorId = indicatorId;
    }

    @Column(name = "value_by_year")
    @Type(type = "JsonObject")
    public HashMap getValueByYear() {
        return valueByYear;
    }

    public void setValueByYear(HashMap valueByYear) {
        this.valueByYear = valueByYear;
    }
}
