package cn.edu.ujn.eshop.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.edu.ujn.eshop.entity.Ckretire;
import cn.edu.ujn.eshop.entity.CkretireExample;


public interface ICkretireService {
	
    int delete(String inid);

    int insert(Ckretire record);

    List<Ckretire> getall();

    Ckretire getbyid(String inid);


    Boolean update(Ckretire record);
    
    List<Ckretire> getbyparams( String proid,String inid,String pname,String retdate );
}
