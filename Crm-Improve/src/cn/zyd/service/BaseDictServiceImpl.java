package cn.zyd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.zyd.dao.IBaseDictDao;
import cn.zyd.po.BaseDict;
@Service
public class BaseDictServiceImpl implements IBaseDictService {

	//自动进行装配，进行实例化对象
	@Autowired
	IBaseDictDao BaseDictdao;
	
	@Override
	public List<BaseDict> SelectBaseDictListByCode(String Value) {
		// TODO Auto-generated method stub
		//查询返回List集合进行处理
		return BaseDictdao.SelectBaseDictListByCode(Value);
	}

}
