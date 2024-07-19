package cn.edu.ujn.eshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Type;
import cn.edu.ujn.eshop.entity.TypeExample;
@Repository
public interface TypeMapper {
//	删除
    int deleteByPrimaryKey(String protypeid);
//插入
    int insert(Type record);

//查询所有
    List<Type> selectByExample(TypeExample example);
//根据主键查询
    Type selectByPrimaryKey(String protypeid);

//更新
    boolean updateByPrimaryKey(Type record);
//    按条件查询
    List<Type> getbyparams(@Param("protypeid") String protypeid,@Param("typename")String typename);
}