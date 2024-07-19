package cn.edu.ujn.eshop.service;

import java.util.List;

import cn.edu.ujn.eshop.entity.Custom;
import cn.edu.ujn.eshop.entity.CustomExample;

public interface ICustomService {
	 int delete(String cusid);

	    int insert(Custom record);

	    List<Custom> selectByExample(CustomExample example);

	    Custom getByid(String cusid);

	    boolean update(Custom record);
	    
	    List<Custom> getlist();
	    
	    List<Custom> getbyparams(String cusid,String cusname);
}
