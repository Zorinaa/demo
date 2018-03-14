package javabeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import myclass.stuclass;
import myclass.susheclass;
import myinterface.ISsusheDao;
 
public class SusheDao implements ISsusheDao{
	private Connection con = DBConnection.getDBConnection();;
	private PreparedStatement pstm = null;
	private ResultSet rs = null;
	public  boolean add(susheclass sushe) throws Exception {
		boolean flag = false;
		String sql = "insert into db_sushe(stuNum,stuName,stuSex,stuProgram,homeNum,homeNo) values(?,?,?,?,?,?)";
		try {
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1,sushe.getStuNum());
			psmt.setString(2,sushe.getStuName());
			psmt.setString(3,sushe.getStuSex());
			psmt.setString(4,sushe.getStuSex());
			psmt.setString(5,sushe.getHomeNum());
			psmt.setString(6,sushe.getHomeNo());
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
	public boolean delete(susheclass sushe) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	public susheclass find(susheclass sushe) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	public ArrayList findAll() throws Exception {
		ArrayList r1 = new ArrayList();
		String sql = "select * from db_sushe where stuNum=(?) and homeNum=(?)";
		PreparedStatement psmt = con.prepareStatement(sql);
		    while (rs.next()) {
			susheclass s = new susheclass();
			s.setStuNum(rs.getString("stuNum"));
			s.setHomeNum(rs.getString("homeNum"));
			s.setHomeNo(rs.getString("homeNo"));
			r1.add(s);
		    }
		    return r1;
	}
	public boolean update(susheclass sushe) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	public susheclass findSusheByid(String stuNums) {
		susheclass s=null;
		String sql = " select * from db_sushe where stuNum = ?";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, stuNums);
			rs=pstm.executeQuery();
			while (rs.next()) {
				String stuName = rs.getString("stuName");
				String stuNum =   rs.getString("stuNum");
				String stuSex=  rs.getString("stuSex");
				String stuProgram=  rs.getString("stuProgram");
				String homeNum = rs.getString("homeNum");
				String homeNo = rs.getString("homeNo");
				
				s = new susheclass(stuNum, stuName, stuSex, stuProgram, homeNum, homeNo);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s;
	
	}

}
