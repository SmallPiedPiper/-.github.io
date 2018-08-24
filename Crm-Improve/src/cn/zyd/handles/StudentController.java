package cn.zyd.handles;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import cn.zyd.beans.Student;
import cn.zyd.service.IStudentService;
@Controller
@RequestMapping("/test")
public class StudentController  {

	@Resource(name="studentService")
	private IStudentService service;

	//一般使用注解这二个东西可以去掉，但是建议保留,因为一般配置文件的级别比注解的级别高
	public void setService(IStudentService service){
		this.service=service;
	}
	@RequestMapping("/login.do")
	public String handleRequest(String name,Integer age) throws Exception {
		// TODO Auto-generated method stub
		Student stu=new Student(name, age);
		service.addStudet(stu);
		return "/WEB-INF/jsp/show.jsp";
	}
}
