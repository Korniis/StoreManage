package cn.edu.ujn.eshop.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Product;
import cn.edu.ujn.eshop.entity.ProductExample;
@Repository
public interface ProductMapper {
    int deleteByPrimaryKey(String proid);

    int insert(Product record);


    List<Product> selectByExample(ProductExample example);

    Product selectByPrimaryKey(String proid);

    boolean updateByPrimaryKey(Product record);
//    多条件查询
    List<Product> getbyparams(@Param("proid") String proid,@Param("supname")String supname,@Param("pname")String pname,@Param("protype")String protype );
}