package javabeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import myclass.moneyclass;
import myclass.stuclass;
import myinterface.ISmoneyDao;

public class MoneyDao implements ISmoneyDao{
	private Connection con = DBConnection.getDBConnection();;
	private PreparedStatement pstm = null;
	private ResultSet rs = null;

	public boolean add(moneyclass money) throws Exception {
		boolean flag = false;
		String sql = "insert into db_money(sMoney,yMoney,stuNum)values(?,?,?)";
		try{
	    PreparedStatement psmt=con.prepareStatement(sql);
		psmt.setString(1, money.getsMoney());
		psmt.setString(2, money.getyMoney());
		psmt.setString(3, money.getStuNum());
		int i = psmt.executeUpdate();
		if (i == 1) {
			flag = true;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return flag;
	  
	}

	public boolean delete(moneyclass money) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	public moneyclass find(moneyclass money) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public ArrayList findAll() throws Exception {
		ArrayList r1 = new ArrayList();
		String sql = "select * from db_money where sMoney=(?)";
		PreparedStatement psmt = con.prepareStatement(sql);
		    while (rs.next()) {
			moneyclass s = new moneyclass();
			 
			s.setsMoney(rs.getString("sMoney"));
			s.setyMoney(rs.getString("sMoney"));
			s.setStuNum(rs.getString("stuNum"));
			 r1.add(s);
		}
		return r1;
	}

	public boolean update(moneyclass money) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}

	 

}
