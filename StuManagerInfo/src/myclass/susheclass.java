package myclass;

public class susheclass {
	
	private static String stuNum;
	private static String stuName;
	private static String stuSex;
	private static String stuProgram;
	private static String homeNum;
	private static String homeNo;
	public susheclass(){}
	public susheclass(String stuNum,String homeNum,String homeNo){
		this.stuNum=stuNum;
		this.homeNum=homeNum;
		this.homeNo=homeNo;
	}
	public susheclass(String stuNum,String stuName,String stuSex,String stuProgram,String homeNum,String homeNo){
		this.stuNum=stuNum;
		this.stuName =stuName;
		this.stuSex=stuSex;
		this.stuProgram=stuProgram;
		this.homeNum=homeNum;
		this.homeNo=homeNo;
	}
	public static String getStuName() {
		return stuName;
	}
	public static void setStuName(String stuName) {
		susheclass.stuName = stuName;
	}
	public static String getStuSex() {
		return stuSex;
	}
	public static void setStuSex(String stuSex) {
		susheclass.stuSex = stuSex;
	}
	public static String getStuProgram() {
		return stuProgram;
	}
	public static void setStuProgram(String stuProgram) {
		susheclass.stuProgram = stuProgram;
	}
	public static String getStuNum() {
		return stuNum;
	}
	public static void setStuNum(String stuNum) {
		susheclass.stuNum = stuNum;
	}
	public static String getHomeNum() {
		return homeNum;
	}
	public static void setHomeNum(String homeNum) {
		susheclass.homeNum = homeNum;
	}
	public static String getHomeNo() {
		return homeNo;
	}
	public static void setHomeNo(String homeNo) {
		susheclass.homeNo = homeNo;
	}
	 
}
