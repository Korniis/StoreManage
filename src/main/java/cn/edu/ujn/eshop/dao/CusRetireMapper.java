package cn.edu.ujn.eshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Ckretire;
import cn.edu.ujn.eshop.entity.CusRetire;
import cn.edu.ujn.eshop.entity.CusRetireExample;
@Repository
public interface CusRetireMapper {
    int deleteByPrimaryKey(String saleid);

    int insert(CusRetire record);


    List<CusRetire> selectByExample(CusRetireExample example);

    CusRetire selectByPrimaryKey(String saleid);


    Boolean updateByPrimaryKey(CusRetire record);
    
    List<CusRetire> getbyparams(@Param("proid") String proid,@Param("saleid")String saleid,@Param("pname")String pname,@Param("retdate")String retdate );
}