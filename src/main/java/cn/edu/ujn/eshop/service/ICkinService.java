package cn.edu.ujn.eshop.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.ujn.eshop.entity.Ckin;
import cn.edu.ujn.eshop.entity.CkinExample;
import cn.edu.ujn.eshop.entity.Product;


public interface ICkinService {

    int delete(String inid);

    int insert(Ckin record);


    List<Ckin> getall();

    Ckin getbyid(String inid);

    boolean update(Ckin record);
    
    List<Ckin> getbyparams(String proid,String inid,String pname,String indate );

}
