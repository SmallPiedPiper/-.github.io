package cn.zyd.service;

import java.util.List;

import cn.zyd.po.BaseDict;

public interface IBaseDictService {

	//��ѯ������������Ϣ������һ��List����
	List<BaseDict> SelectBaseDictListByCode(String Value);
}
