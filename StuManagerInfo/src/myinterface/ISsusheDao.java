package myinterface;

import java.util.ArrayList;
 
import myclass.stuclass;
import myclass.susheclass;

public interface ISsusheDao {
	public abstract boolean add(susheclass sushe) throws Exception;//添加
	public abstract susheclass find(susheclass sushe) throws Exception;//查询
	public abstract boolean delete(susheclass sushe) throws Exception;//删除
	public abstract boolean update(susheclass sushe) throws Exception;//更新
	public susheclass findSusheByid(String stuNum);
	
	public ArrayList findAll() throws Exception;//查找所有

}
