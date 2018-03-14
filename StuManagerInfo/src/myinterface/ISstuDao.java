package myinterface;

import java.util.ArrayList;
import java.util.List;


import myclass.stuclass;
import myclass.userclass;

public interface ISstuDao {
	


	public abstract boolean add(stuclass student) throws Exception;//添加
	public abstract stuclass find(stuclass student) throws Exception;//查询
	public abstract boolean delete(int stuNum) throws Exception;//删除
	public abstract boolean update(stuclass student) throws Exception;//更新
	public stuclass findStudentByid(String stuNum);
	
	public ArrayList findAll() throws Exception;//查找所有
}
