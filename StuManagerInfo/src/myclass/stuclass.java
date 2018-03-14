package myclass;

public class stuclass {

	private static String stuNum;
	private static String stuName;
	private static String stuSex;
	private static String stuProgram;
	private static String stuNot;
	private static String stuYear;
	private static String stuPNo;
	private static String stuAddress;
	private static String stuYzbm;
	private static String stuZzmm;
	private static String stuSushe;
	private static String stuScore;

	public stuclass() {
	}

	public stuclass(String stuNum, String stuName, String stuSex,String stuProgram,
			String stuNot, String stuYear, String stuPNo, String stuAddress,
			String stuYzbm, String stuZzmm,String stuSushe,String stuScore) {
		this.stuName = stuName;
		this.stuNum = stuNum;
		this.stuSex = stuSex;
		this.stuProgram = stuProgram;
		this.stuNot = stuNot;
		this.stuYear = stuYear;
		this.stuPNo=stuPNo;
		this.stuAddress=stuAddress;
		this.stuYzbm=stuYzbm;
		this.stuZzmm=stuZzmm;
		this.stuSushe=stuSushe;
		this.stuScore=stuScore;
	}

	public static String getStuNum() {
		return stuNum;
	}

	public static void setStuNum(String stuNum) {
		stuclass.stuNum = stuNum;
	}

	public static String getStuName() {
		return stuName;
	}

	public static void setStuName(String stuName) {
		stuclass.stuName = stuName;
	}

	public static String getStuSex() {
		return stuSex;
	}

	public static void setStuSex(String stuSex) {
		stuclass.stuSex = stuSex;
	}

	public static String getStuProgram() {
		return stuProgram;
	}

	public static void setStuProgram(String stuProgram) {
		stuclass.stuProgram = stuProgram;
	}

	public static String getStuNot() {
		return stuNot;
	}

	public static void setStuNot(String stuNot) {
		stuclass.stuNot = stuNot;
	}

	public static String getStuYear() {
		return stuYear;
	}

	public static void setStuYear(String stuYear) {
		stuclass.stuYear = stuYear;
	}

	public static String getStuPNo() {
		return stuPNo;
	}

	public static void setStuPNo(String stuPNo) {
		stuclass.stuPNo = stuPNo;
	}

	public static String getStuAddress() {
		return stuAddress;
	}

	public static void setStuAddress(String stuAddress) {
		stuclass.stuAddress = stuAddress;
	}

	public static String getStuYzbm() {
		return stuYzbm;
	}

	public static void setStuYzbm(String stuYzbm) {
		stuclass.stuYzbm = stuYzbm;
	}

	public static String getStuZzmm() {
		return stuZzmm;
	}

	public static void setStuZzmm(String stuZzmm) {
		stuclass.stuZzmm = stuZzmm;
	}

	public static String getStuSushe() {
		return stuSushe;
	}

	public static void setStuSushe(String stuSushe) {
		stuclass.stuSushe = stuSushe;
	}

	public static String getStuScore() {
		return stuScore;
	}

	public static void setStuScore(String stuScore) {
		stuclass.stuScore = stuScore;
	}

}
