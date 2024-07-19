package cn.edu.ujn.eshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Ckin;
import cn.edu.ujn.eshop.entity.CkinExample;
import cn.edu.ujn.eshop.entity.Product;
@Repository
public interface CkinMapper {
	
    int deleteByPrimaryKey(String inid);

    int insert(Ckin record);


    List<Ckin> selectByExample(CkinExample example);

    Ckin selectByPrimaryKey(String inid);

    boolean updateByPrimaryKey(Ckin record);
    
    List<Ckin> getbyparams(@Param("proid") String proid,@Param("inid")String inid,@Param("pname")String pname,@Param("indate")String indate );
}