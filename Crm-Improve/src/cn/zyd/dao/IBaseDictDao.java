package cn.zyd.dao;
import java.util.List;
import cn.zyd.po.BaseDict;
//操纵数据库dao类
public interface IBaseDictDao {

	//查询
	 public List<BaseDict> SelectBaseDictListByCode(String value);
}
