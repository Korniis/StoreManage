package cn.edu.ujn.eshop.service;

import org.apache.ibatis.annotations.Param;

import cn.edu.ujn.eshop.entity.Manager;


public interface IManagerService {
	   Manager getbyid( String managerid,String pwd);
	   
	   boolean update(Manager manager);
	   
	   Manager getmanager(String managerid);
}
