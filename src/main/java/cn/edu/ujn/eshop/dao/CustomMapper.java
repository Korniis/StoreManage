package cn.edu.ujn.eshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Custom;
import cn.edu.ujn.eshop.entity.CustomExample;
@Repository
public interface CustomMapper {
    int deleteByPrimaryKey(String cusid);

    int insert(Custom record);

    List<Custom> selectByExample(CustomExample example);

    Custom selectByPrimaryKey(String cusid);

    boolean updateByPrimaryKey(Custom record);
    List<Custom> getbyparams(@Param("cusid") String cusid,@Param("cusname") String cusname);
}