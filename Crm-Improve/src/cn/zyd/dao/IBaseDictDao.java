package cn.zyd.dao;
import java.util.List;
import cn.zyd.po.BaseDict;
//�������ݿ�dao��
public interface IBaseDictDao {

	//��ѯ
	 public List<BaseDict> SelectBaseDictListByCode(String value);
}
