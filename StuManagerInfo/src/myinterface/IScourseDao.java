package myinterface;

import java.util.ArrayList;

import myclass.courseclass;
import myclass.susheclass;
 

public  interface IScourseDao {
	public abstract boolean add(courseclass student) throws Exception;//���
	public abstract courseclass find(courseclass student) throws Exception;//��ѯ
	public abstract boolean delete(courseclass student) throws Exception;//ɾ��
	public abstract boolean update(courseclass student) throws Exception;//����
	public courseclass findSusheByid(String stuNums,String cons);
	
	public ArrayList findAll() throws Exception;//��������

}
