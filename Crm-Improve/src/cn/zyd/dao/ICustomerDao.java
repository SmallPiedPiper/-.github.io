package cn.zyd.dao;

import java.util.List;

import cn.zyd.po.Customer;
import cn.zyd.po.QuerryVo;

public interface ICustomerDao {

	//来进行获取到总数据行数
	int SelectCustomerByQuerryVo(QuerryVo vo);

	//获取带每一行的数据进行显示
	List<Customer> SelectCustomerListByQuerry(QuerryVo vo);

	void deleteCustomer(Integer id);

	Customer selectEditCustomerById(Integer id);

	void updateCustomer(Customer customer);





	
}
