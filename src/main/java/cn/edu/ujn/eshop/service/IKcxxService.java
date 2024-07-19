package cn.edu.ujn.eshop.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.ujn.eshop.entity.Kcxx;


public interface IKcxxService {
	int delete(String proid);

    int insert(Kcxx record);

    List<Kcxx> getall();

    Kcxx getbyid(String proid);

    Boolean update(Kcxx record);
    
    Kcxx kcxxWithPro(String proid);
    
    List<Kcxx> kcxxWithPronum();
    
    List<Kcxx> kcxxWithProdata();
    
    List<Kcxx> getbyparams(String proid,String pname);

}
