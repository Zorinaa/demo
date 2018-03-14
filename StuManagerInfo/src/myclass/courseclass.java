package myclass;

public class courseclass {
	private static String  stuNum;
	private static String  stuName;
	private static String cno;
	private static String cname ;
	private static String  cLeibie;
	private static String  cXingzhi;
	private static String cTeacher ;
	private static String  cPoint;
	
	public courseclass(){}
	public courseclass(String cno, String cname , String cLeibie ,
			String cXingzhi , String cTeacher , String cPoint ){
		this.cno=cno;
		this.cname=cname;
		this.cLeibie=cLeibie;
		this.cXingzhi=cXingzhi;
		this.cTeacher=cTeacher;
		this.cPoint=cPoint;
	}
	public courseclass(String stuNum,String stuName,String cno, String cname , String cLeibie ,
			String cXingzhi , String cTeacher , String cPoint ){
		this.stuNum=stuNum;
		this.stuName=stuName;
		this.cno=cno;
		this.cname=cname;
		this.cLeibie=cLeibie;
		this.cXingzhi=cXingzhi;
		this.cTeacher=cTeacher;
		this.cPoint=cPoint;
	}
	public static String getStuNum() {
		return stuNum;
	}
	public static void setStuNum(String stuNum) {
		courseclass.stuNum = stuNum;
	}
	public static String getStuName() {
		return stuName;
	}
	public static void setStuName(String stuName) {
		courseclass.stuName = stuName;
	}
	public static String getCno() {
		return cno;
	}
	public static void setCno(String cno) {
		courseclass.cno = cno;
	}
	public static String getCname() {
		return cname;
	}
	public static void setCname(String cname) {
		courseclass.cname = cname;
	}
	public static String getcLeibie() {
		return cLeibie;
	}
	public static void setcLeibie(String cLeibie) {
		courseclass.cLeibie = cLeibie;
	}
	public static String getcXingzhi() {
		return cXingzhi;
	}
	public static void setcXingzhi(String cXingzhi) {
		courseclass.cXingzhi = cXingzhi;
	}
	public static String getcTeacher() {
		return cTeacher;
	}
	public static void setcTeacher(String cTeacher) {
		courseclass.cTeacher = cTeacher;
	}
	public static String getCpoint() {
		return cPoint;
	}
	public static void setCpoint(String cpoint) {
		courseclass.cPoint = cpoint;
	}
 
}

