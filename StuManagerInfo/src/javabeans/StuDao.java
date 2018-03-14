package javabeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import myclass.stuclass;
import myinterface.ISstuDao;
import myinterface.ISuserDao;

public class StuDao implements ISstuDao{

	private Connection con = DBConnection.getDBConnection();;
	private PreparedStatement pstm = null;
	private ResultSet rs = null;

	public boolean add(stuclass student) throws Exception {
		boolean flag = false;
		String sql = "insert into db_stuinfo(stuNum,stuName,stuSex,stuProgram,stuNot,stuYear,stuPNo,stuAddress,stuYzbm,stuZzmm,stuSushe,stuScore) values(?,?,?,?,?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, student.getStuNum());
			psmt.setString(2, student.getStuName());
			psmt.setString(3, student.getStuSex());
			psmt.setString(4, student.getStuProgram());
			psmt.setString(5, student.getStuNot());
			psmt.setString(6, student.getStuYear());
			psmt.setString(7, student.getStuPNo());
			psmt.setString(8, student.getStuAddress());
			psmt.setString(9, student.getStuYzbm());
			psmt.setString(10, student.getStuZzmm());
			psmt.setString(11, student.getStuSushe());
			psmt.setString(12, student.getStuScore());
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
	public stuclass find(stuclass student) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	public boolean delete(int stuNums) throws Exception {
		boolean flag = false;
		String sql = "delete from db_stuinfo where stuNum=(?)";
		try {
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setInt(1, stuNums);
			if (psmt.executeUpdate() > 0) {
				flag = true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return flag;
		
	}
	public boolean update(stuclass student) throws Exception {
		return false;
		// TODO Auto-generated method stub
		
	}
	public ArrayList findAll() throws Exception {
		
		ArrayList r1 = new ArrayList();
		String sql = "select * from db_stuinfo where stuNum=(?) and stuName=(?)";
		PreparedStatement psmt = con.prepareStatement(sql);
		rs=pstm.executeQuery();
		    while (rs.next()) {
			stuclass s = new stuclass();
			s.setStuNum(rs.getString("stuNum"));
			s.setStuName(rs.getString("stuName"));
			s.setStuSex(rs.getString("stuSex"));
			s.setStuProgram(rs.getString("StuProgram"));
			s.setStuNot(rs.getString("stuNot"));
			s.setStuYear(rs.getString("StuYear"));
			s.setStuPNo(rs.getString("StuPNo"));
			s.setStuAddress(rs.getString("Address"));
			s.setStuYzbm(rs.getString("StuYzbm"));
			s.setStuZzmm(rs.getString("StuZzmm"));
			s.setStuSushe(rs.getString("StuSushe"));
			s.setStuScore(rs.getString("StuScore"));
			 r1.add(s);
		}
		return r1;
	}
	
	
	public stuclass findStudentByid(String stuNums) {
		
		stuclass s = null;
		String sql = "select * from db_stuinfo where stuNum = ?";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, stuNums);
			rs=pstm.executeQuery();
			while (rs.next()) {
				String stuName = rs.getString("stuName");
				String stuNum =   rs.getString("stuNum");
				String stuSex=  rs.getString("stuSex");
				String stuProgram=  rs.getString("stuProgram");
				String stuNot=  rs.getString("stuNot");
				String stuYear=  rs.getString("stuYear");
				String stuPNo= rs.getString("stuPNo");
				String stuAddress=  rs.getString("stuAddress");
				String stuYzbm= rs.getString("stuYzbm");
				String stuZzmm= rs.getString("stuZzmm");
				String stuSushe= rs.getString("stuSushe");
				String stuScore= rs.getString("stuScore");
				s = new stuclass(stuNum, stuName, stuSex, stuProgram, stuNot, stuYear, stuPNo, stuAddress, stuYzbm, stuZzmm, stuSushe, stuScore);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s;
	}
	
}
