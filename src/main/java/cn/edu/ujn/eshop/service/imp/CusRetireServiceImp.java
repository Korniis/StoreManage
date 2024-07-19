package cn.edu.ujn.eshop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.edu.ujn.eshop.dao.CusRetireMapper;
import cn.edu.ujn.eshop.dao.KcxxMapper;
import cn.edu.ujn.eshop.entity.CusRetire;
import cn.edu.ujn.eshop.entity.CusRetireExample;
import cn.edu.ujn.eshop.entity.Kcxx;
import cn.edu.ujn.eshop.service.ICusRetireService;


@Service
public class CusRetireServiceImp implements ICusRetireService {

	@Autowired
	CusRetireMapper cusRetireMapper;
	@Autowired
	KcxxMapper kcxxMapper;
	public int delete(String saleid) {
		// TODO Auto-generated method stub
		return cusRetireMapper.deleteByPrimaryKey(saleid);
	}

	public int insert(CusRetire record) {
		String id=record.getProid();
		Kcxx kcxx=new Kcxx();
		kcxx=kcxxMapper.selectByPrimaryKey(id);
		int kcnum=kcxx.getNum();
		int salenum=record.getNum();
		int nownum=kcnum+salenum-kcnum;
		kcxx.setNum(nownum);
		kcxx.setPname(record.getPname());
		kcxx.setProid(record.getProid());
		kcxx.setMarks(record.getMarks());
		kcxxMapper.updateByPrimaryKey(kcxx);
		return cusRetireMapper.insert(record);
	}

	public List<CusRetire> getall() {
		// TODO Auto-generated method stub
		return cusRetireMapper.selectByExample(null);
	}

	public CusRetire getbyid(String saleid) {
		// TODO Auto-generated method stub
		return cusRetireMapper.selectByPrimaryKey(saleid);
	}

	public Boolean update(CusRetire record) {
		// TODO Auto-generated method stub
		return cusRetireMapper.updateByPrimaryKey(record);
	}

	public List<CusRetire> getbyparams(String proid, String saleid, String pname, String retdate) {
		// TODO Auto-generated method stub
		return cusRetireMapper.getbyparams(proid, saleid, pname, retdate);
	}

}
