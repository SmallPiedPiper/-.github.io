package cn.zyd.service;


import cn.zyd.po.Customer;
import cn.zyd.po.QuerryVo;
import cn.zyd.utils.Page;

//

public interface ICustomerService {

	Page<Customer> SelectCustomerListByVo(QuerryVo vo);

	void deleteCudtomer(Integer id);

	Customer selectEditCustomerById(Integer id);

	

	

	void updateCustomer(Customer customer);

	
	
}
