package myinterface;

import java.util.ArrayList;
 
import myclass.stuclass;
import myclass.susheclass;

public interface ISsusheDao {
	public abstract boolean add(susheclass sushe) throws Exception;//���
	public abstract susheclass find(susheclass sushe) throws Exception;//��ѯ
	public abstract boolean delete(susheclass sushe) throws Exception;//ɾ��
	public abstract boolean update(susheclass sushe) throws Exception;//����
	public susheclass findSusheByid(String stuNum);
	
	public ArrayList findAll() throws Exception;//��������

}
