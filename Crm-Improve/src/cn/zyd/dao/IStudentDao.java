package cn.zyd.dao;
import cn.zyd.beans.Student;
public interface IStudentDao {

	//mybatisҲ���Ըĳ�ע��,����һ�㲻��
	//@Insert("insert into ssm_gather (name,age) values(#{name},#{age})")
	void insertStudent(Student student);
}
