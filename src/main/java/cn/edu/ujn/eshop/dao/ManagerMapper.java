package cn.edu.ujn.eshop.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.edu.ujn.eshop.entity.Manager;
@Repository

public interface ManagerMapper {
	
   Manager getbyid(@Param("managerid") String managerid);
   
   boolean update(Manager manager);
   
   Manager getmanager(String managerid);
	
}