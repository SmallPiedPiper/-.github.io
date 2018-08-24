package cn.zyd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.zyd.dao.IBaseDictDao;
import cn.zyd.po.BaseDict;
@Service
public class BaseDictServiceImpl implements IBaseDictService {

	//�Զ�����װ�䣬����ʵ��������
	@Autowired
	IBaseDictDao BaseDictdao;
	
	@Override
	public List<BaseDict> SelectBaseDictListByCode(String Value) {
		// TODO Auto-generated method stub
		//��ѯ����List���Ͻ��д���
		return BaseDictdao.SelectBaseDictListByCode(Value);
	}

}
