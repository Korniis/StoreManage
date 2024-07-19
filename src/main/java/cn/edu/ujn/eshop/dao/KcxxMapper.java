package cn.edu.ujn.eshop.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Ckin;
import cn.edu.ujn.eshop.entity.Kcxx;
import cn.edu.ujn.eshop.entity.KcxxExample;
@Repository
public interface KcxxMapper {
    int deleteByPrimaryKey(String proid);

    int insert(Kcxx record);

    List<Kcxx> selectByExample(KcxxExample example);

    Kcxx selectByPrimaryKey(String proid);

    Boolean updateByPrimaryKey(Kcxx record);
//    库存表关联商品信息表
    Kcxx kcxxWithPro(String proid);
//  库存表关联商品信息表（库存预警表）
    List<Kcxx> kcxxWithPronum();
    List<Kcxx> kcxxWithProdata();
    List<Kcxx> getbyparams(@Param("proid") String proid,@Param("pname")String pname);
}