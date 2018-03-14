package myinterface;

import java.util.ArrayList;

import myclass.courseclass;
import myclass.susheclass;
 

public  interface IScourseDao {
	public abstract boolean add(courseclass student) throws Exception;//添加
	public abstract courseclass find(courseclass student) throws Exception;//查询
	public abstract boolean delete(courseclass student) throws Exception;//删除
	public abstract boolean update(courseclass student) throws Exception;//更新
	public courseclass findSusheByid(String stuNums,String cons);
	
	public ArrayList findAll() throws Exception;//查找所有

}
