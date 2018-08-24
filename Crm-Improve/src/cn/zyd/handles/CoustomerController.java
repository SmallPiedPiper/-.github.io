package cn.zyd.handles;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.zyd.po.BaseDict;
import cn.zyd.po.Customer;
import cn.zyd.po.QuerryVo;
import cn.zyd.service.IBaseDictService;
import cn.zyd.service.ICustomerService;
import cn.zyd.utils.Page;

//���������
@Controller
public class CoustomerController {

	@Autowired
	IBaseDictService service;
	
	@Autowired
	ICustomerService  service2;
	
	@RequestMapping("/test.do")
	public String handler1(QuerryVo vo,Model model )
	{
		//��ʼ��ѡ�����������Ϣ
		List<BaseDict> formType=service.SelectBaseDictListByCode("009");
		List<BaseDict>  industryType=service.SelectBaseDictListByCode("001");
		List<BaseDict> levelType=service.SelectBaseDictListByCode("006");
		model.addAttribute("formType", formType);
		model.addAttribute("industryType", industryType);
		model.addAttribute("levelType", levelType);
		
		Page<Customer> page=service2.SelectCustomerListByVo(vo);
		model.addAttribute("page", page);
		//���ݻ��Ե�����
		model.addAttribute("custIndustry", vo.getCustIndustry());
		model.addAttribute("custLevel", vo.getCustLevel());
		model.addAttribute("custName", vo.getCustName());
		model.addAttribute("custSource", vo.getCustSource());
		return "welcome.jsp";
	}
	
	//ͨ��iD����ɾ�����пͻ�����Ϣ
	@RequestMapping("/deletes.do")
	public @ResponseBody
	 String deleteCustomer(Integer id){
		service2.deleteCudtomer(id);
		return "OK";
	}
	
	@RequestMapping(value="/edit.do")
	public @ResponseBody
	 Customer editCustomer(Integer id){
		
		System.out.println("---------------");
		return service2.selectEditCustomerById(id);
		
	}
	
	@RequestMapping("/update.do")
	public @ResponseBody
	 String UpdateCustomer(Customer customer){
		
		service2.updateCustomer(customer);
		return "OK";
		
	}
}
