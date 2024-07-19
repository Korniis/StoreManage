package cn.edu.ujn.eshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Ckin;
import cn.edu.ujn.eshop.entity.Ckretire;
import cn.edu.ujn.eshop.entity.CkretireExample;
@Repository
public interface CkretireMapper {
    int deleteByPrimaryKey(String inid);

    int insert(Ckretire record);

    List<Ckretire> selectByExample(CkretireExample example);

    Ckretire selectByPrimaryKey(String inid);


    Boolean updateByPrimaryKey(Ckretire record);
    List<Ckretire> getbyparams(@Param("proid") String proid,@Param("inid")String inid,@Param("pname")String pname,@Param("retdate")String retdate );

}