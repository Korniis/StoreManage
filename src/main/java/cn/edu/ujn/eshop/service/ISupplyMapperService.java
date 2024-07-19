package cn.edu.ujn.eshop.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.ujn.eshop.entity.Supply;
import cn.edu.ujn.eshop.entity.SupplyExample;


public interface ISupplyMapperService {

    int delete(String supid);

    int insert(Supply record);

    List<Supply> getall();

    Supply getbyid(String supid);

    boolean update(Supply record);
    List<Supply> getbyparams(String supid, String suppname);
}
