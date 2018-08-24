package cn.zyd.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.zyd.dao.ICustomerDao;
import cn.zyd.po.Customer;
import cn.zyd.po.QuerryVo;
import cn.zyd.utils.Page;
@Service
public class CustomerServiceImpl implements ICustomerService {

	@Autowired
	ICustomerDao dao;
	
	@Override
	public Page<Customer> SelectCustomerListByVo(QuerryVo vo) {
		// TODO Auto-generated method stub
		 Page<Customer> page=new Page<Customer>();
		 page.setSize(5);
		 //设置页显示的数据条数是固定值
		 vo.setSize(5);
		 if(vo !=null){
			 //判断当前也是否为空，来进行封装vo，vo里面的行数，和当前页，目的是查询的时候方便获取到数据库里面具体的第几条数据
			 if(vo.getPage()!=null)
			 {
				 page.setPage(vo.getPage());
				 //例如0 -5 5-10 10 15  左闭右开
				 vo.setStartRow((vo.getPage()-1)*vo.getSize());
			 }
			 //如果这些查询条件全部为空 ，则就全部显示了
			 if(vo.getCustName() !=null && !"".equals(vo.getCustName()))
			 {
		 		vo.setCustName(vo.getCustName().trim());
			 }
			 if(vo.getCustIndustry() !=null && !"".equals(vo.getCustIndustry())){
				 //后面的方法是为了去除后面的空白字符
				 vo.setCustIndustry(vo.getCustIndustry().trim());
			 }
			 if(vo.getCustSource() !=null && !"".equals(vo.getCustSource())){
				 vo.setCustSource(vo.getCustSource().trim());
			 }
			 if(vo.getCustLevel() !=null && !"".equals(vo.getCustLevel())){
				 vo.setCustLevel(vo.getCustLevel().trim());
			 }
			 //将获取到的数据封装到page页面进行显示
			page.setTotal(dao.SelectCustomerByQuerryVo(vo));
			page.setRows(dao.SelectCustomerListByQuerry(vo));
		 }
		 
		 return page ;
	}

	@Override
	public void deleteCudtomer(Integer id) {
		// TODO Auto-generated method stub
		
		dao.deleteCustomer(id);
	}

	//通过Id进行查询操作
	@Override
	public Customer selectEditCustomerById(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectEditCustomerById(id);
	}

	@Override
	public void updateCustomer(Customer customer) {
		// TODO Auto-generated method stub
		dao.updateCustomer(customer);
	}

}
