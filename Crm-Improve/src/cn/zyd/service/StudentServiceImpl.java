package cn.zyd.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.zyd.beans.Student;
import cn.zyd.dao.IStudentDao;
@Service("studentService")
public class StudentServiceImpl implements IStudentService {

	@Resource(name="IStudentDao")
	private IStudentDao dao;
	public void setDao(IStudentDao dao)
	{
		this.dao=dao;
	}
	@Override
	@Transactional
	public void addStudet(Student student) {
		// TODO Auto-generated method stub
		dao.insertStudent(student);
	}

}
