package cn.edu.ujn.eshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Supply;
import cn.edu.ujn.eshop.entity.SupplyExample;
@Repository
public interface SupplyMapper {
    int deleteByPrimaryKey(String supid);

    int insert(Supply record);

    List<Supply> selectByExample(SupplyExample example);

    Supply selectByPrimaryKey(String supid);

    boolean updateByPrimaryKey(Supply record);
    List<Supply> getbyparams(@Param("supid") String cusid,@Param("suppname") String suppname);
}