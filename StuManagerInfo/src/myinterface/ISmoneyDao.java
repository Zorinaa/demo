package myinterface;

import java.util.ArrayList;

import myclass.moneyclass;
 

public interface ISmoneyDao {
	public abstract boolean add(moneyclass money) throws Exception;//添加
	public abstract moneyclass find(moneyclass money) throws Exception;//查询
	public abstract boolean delete(moneyclass money) throws Exception;//删除
	public abstract boolean update(moneyclass money) throws Exception;//更新
	
	
	public ArrayList findAll() throws Exception;//查找所有

}
