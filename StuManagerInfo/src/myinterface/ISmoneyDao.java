package myinterface;

import java.util.ArrayList;

import myclass.moneyclass;
 

public interface ISmoneyDao {
	public abstract boolean add(moneyclass money) throws Exception;//���
	public abstract moneyclass find(moneyclass money) throws Exception;//��ѯ
	public abstract boolean delete(moneyclass money) throws Exception;//ɾ��
	public abstract boolean update(moneyclass money) throws Exception;//����
	
	
	public ArrayList findAll() throws Exception;//��������

}
