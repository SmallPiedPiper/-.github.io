package cn.zyd.dao;

import java.util.List;

import cn.zyd.po.Customer;
import cn.zyd.po.QuerryVo;

public interface ICustomerDao {

	//�����л�ȡ������������
	int SelectCustomerByQuerryVo(QuerryVo vo);

	//��ȡ��ÿһ�е����ݽ�����ʾ
	List<Customer> SelectCustomerListByQuerry(QuerryVo vo);

	void deleteCustomer(Integer id);

	Customer selectEditCustomerById(Integer id);

	void updateCustomer(Customer customer);





	
}
