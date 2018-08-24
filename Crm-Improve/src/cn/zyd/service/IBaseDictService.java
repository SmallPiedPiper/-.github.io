package cn.zyd.service;

import java.util.List;

import cn.zyd.po.BaseDict;

public interface IBaseDictService {

	//查询基本的类型信息，返回一个List集合
	List<BaseDict> SelectBaseDictListByCode(String Value);
}
