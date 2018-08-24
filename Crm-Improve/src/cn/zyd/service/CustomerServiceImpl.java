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
		 //����ҳ��ʾ�����������ǹ̶�ֵ
		 vo.setSize(5);
		 if(vo !=null){
			 //�жϵ�ǰҲ�Ƿ�Ϊ�գ������з�װvo��vo������������͵�ǰҳ��Ŀ���ǲ�ѯ��ʱ�򷽱��ȡ�����ݿ��������ĵڼ�������
			 if(vo.getPage()!=null)
			 {
				 page.setPage(vo.getPage());
				 //����0 -5 5-10 10 15  ����ҿ�
				 vo.setStartRow((vo.getPage()-1)*vo.getSize());
			 }
			 //�����Щ��ѯ����ȫ��Ϊ�� �����ȫ����ʾ��
			 if(vo.getCustName() !=null && !"".equals(vo.getCustName()))
			 {
		 		vo.setCustName(vo.getCustName().trim());
			 }
			 if(vo.getCustIndustry() !=null && !"".equals(vo.getCustIndustry())){
				 //����ķ�����Ϊ��ȥ������Ŀհ��ַ�
				 vo.setCustIndustry(vo.getCustIndustry().trim());
			 }
			 if(vo.getCustSource() !=null && !"".equals(vo.getCustSource())){
				 vo.setCustSource(vo.getCustSource().trim());
			 }
			 if(vo.getCustLevel() !=null && !"".equals(vo.getCustLevel())){
				 vo.setCustLevel(vo.getCustLevel().trim());
			 }
			 //����ȡ�������ݷ�װ��pageҳ�������ʾ
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

	//ͨ��Id���в�ѯ����
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
