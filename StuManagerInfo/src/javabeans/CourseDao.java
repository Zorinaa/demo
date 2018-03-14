package javabeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import myclass.courseclass;
import myclass.stuclass;
 
import myinterface.IScourseDao;
 

public class CourseDao implements IScourseDao{
	private Connection con = DBConnection.getDBConnection();;
	private PreparedStatement pstm = null;
	private ResultSet rs = null;
	public boolean add(courseclass course) throws Exception {
		boolean flag = false;
		String sql = "insert into db_coure(stuNum,stuName,cno,cname,cLeibie,cXingzhi,cTeacher,cPoint ) values (?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement psmt = con.prepareStatement(sql);
			psmt.setString(1, course.getStuNum());
			psmt.setString(2, course.getStuName());
			psmt.setString(3, course.getCno());
			psmt.setString(4, course.getCname());
			psmt.setString(5, course.getcLeibie());
			psmt.setString(6, course.getcXingzhi());
			psmt.setString(7, course.getcTeacher());
			psmt.setString(8, course.getCpoint());
			 
			int i = psmt.executeUpdate();
			if (i == 1) {
				flag = true;
			}
		} catch (SQLException e) {
			 
			e.printStackTrace();
		}
		return flag;
	}
	public boolean delete(courseclass student) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	public courseclass find(courseclass student) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	public ArrayList findAll() throws Exception {
		ArrayList r1 = new ArrayList();
		String sql = "select * from db_coure where cno=(?)";
		PreparedStatement psmt = con.prepareStatement(sql);
		    while (rs.next()) {
			courseclass s=new courseclass();
			s.setCno(rs.getString("cno"));
			s.setCname(rs.getString("cname"));
			s.setcLeibie(rs.getString("cLeibie"));
			s.setcXingzhi(rs.getString("cXingzhi"));
			s.setcTeacher(rs.getString("cTeacher"));
			s.setCpoint(rs.getString("cPoint")); 
			 r1.add(s);
		}
		return r1;
	}
	public boolean update(courseclass student) throws Exception {
		// TODO Auto-generated method stub
		return false;
	}
	public courseclass findSusheByid(String stuNums, String cons) {
		courseclass s = null;
		String sql = "select * from db_coure where stuNum = (?) and cno = (?)";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1, stuNums);
			pstm.setString(2, cons);
			rs=pstm.executeQuery();
			while (rs.next()) {
				String stuName = rs.getString("stuName");
				String stuNum =   rs.getString("stuNum");
				String cno = rs.getString("cno");
				String cname= rs.getString("cname");
				String cLeibie= rs.getString("cLeibie");
				String cXingzhi= rs.getString("cXingzhi");
				String cTeacher= rs.getString("cTeacher");
				String cPoint= rs.getString("cPoint");
				s = new courseclass(stuNum, stuName, cno, cname, cLeibie, cXingzhi, cTeacher, cPoint);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return s;
		// TODO Auto-generated method stub
	}
	  

	 

}
