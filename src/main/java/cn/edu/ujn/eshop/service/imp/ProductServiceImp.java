package cn.edu.ujn.eshop.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.ujn.eshop.dao.ProductMapper;
import cn.edu.ujn.eshop.entity.Product;
import cn.edu.ujn.eshop.entity.ProductExample;
import cn.edu.ujn.eshop.service.IProductService;


@Service
public class ProductServiceImp  implements IProductService{
	
	@Autowired
	ProductMapper productMapper;
//	根据产品id删除对应产品信息
	public int deleteByPrimaryKey(String proid) {
		return productMapper.deleteByPrimaryKey(proid);
	}
//有选择的插入
	public int   insert(Product record) {
		return productMapper. insert(record);
	} 
//根据条件查询
	public List<Product> selectByExample(ProductExample example) {
		return productMapper.selectByExample(example);
	}
//根据主键查询
	public Product selectByPrimaryKey(String proid) {
		return productMapper.selectByPrimaryKey(proid);
	}
//根据主键更新
	public boolean updateByPrimaryKey(Product record) {
		return productMapper.updateByPrimaryKey(record);
	}
//	获取所有
	public List<Product> getlist() {
		// TODO Auto-generated method stub
		 return productMapper.selectByExample(null);
	}
//	按输入的条件查询
	
	public List<Product> getbyparams(String proid, String supname, String pname, String protype) {
		// TODO Auto-generated method stub
		return productMapper.getbyparams(proid, supname, pname, protype);
	}


}
