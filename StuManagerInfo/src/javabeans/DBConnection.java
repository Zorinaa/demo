package javabeans;
import java.sql.*;
public class DBConnection {

	private static String driverName ="com.mysql.jdbc.Driver";
	private static String userName="root";
	private static String userpassword = "123456";
	private static String dbName = "stumanager";
	
	public static Connection getDBConnection() {
		String url = "jdbc:mysql://localhost:3306/"+dbName+"?&useUnicode=true&characterEncoding=utf-8";
		
		
		
		try {
			Class.forName(driverName);
			Connection con = DriverManager.getConnection(url,userName,userpassword);
			return con;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
				
	}
	
	public static void closeDB(Connection con,PreparedStatement pstm,ResultSet rs) {
		try {
			if(rs!=null){rs.close();}
			if(pstm!=null){pstm.close();}
			if(con!=null){con.close();}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
