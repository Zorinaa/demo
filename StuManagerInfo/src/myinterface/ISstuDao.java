package myinterface;

import java.util.ArrayList;
import java.util.List;


import myclass.stuclass;
import myclass.userclass;

public interface ISstuDao {
	


	public abstract boolean add(stuclass student) throws Exception;//���
	public abstract stuclass find(stuclass student) throws Exception;//��ѯ
	public abstract boolean delete(int stuNum) throws Exception;//ɾ��
	public abstract boolean update(stuclass student) throws Exception;//����
	public stuclass findStudentByid(String stuNum);
	
	public ArrayList findAll() throws Exception;//��������
}
