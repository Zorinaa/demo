package javabeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.omg.CORBA.PUBLIC_MEMBER;


import myclass.userclass;
import myinterface.ISuserDao;

public class UserDao implements ISuserDao{

	private Connection con = DBConnection.getDBConnection();;
	private PreparedStatement pstm = null;
	private ResultSet rs = null;
	public boolean isLogin(userclass user) {
		//用户验证
		boolean flag=false;
		String sql="select * from db_user where userID=(?) and userPwd=(?)";
		try {
			pstm = con.prepareStatement(sql);
			pstm.setString(1,user.getUserID());
			pstm.setString(2,user.getUserPwd());
			rs = pstm.executeQuery();
			if(rs.next()){
				flag = true;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return flag;
	}
	public userclass find(userclass users) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

		

	
	
}
