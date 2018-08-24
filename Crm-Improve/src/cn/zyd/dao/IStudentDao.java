package cn.zyd.dao;
import cn.zyd.beans.Student;
public interface IStudentDao {

	//mybatis也可以改成注解,但是一般不用
	//@Insert("insert into ssm_gather (name,age) values(#{name},#{age})")
	void insertStudent(Student student);
}
