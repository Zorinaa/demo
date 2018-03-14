package myclass;

public class moneyclass {
	private String sMoney;
	private String yMoney;
	private String stuNum;
	public moneyclass(){}
	public moneyclass(String sMoney,String yMoney,String stuNum){
		this.sMoney=sMoney;
		this.yMoney=yMoney;
		this.stuNum=stuNum;
	}
	 
	public String getsMoney() {
		return sMoney;
	}
	public void setsMoney(String sMoney) {
		this.sMoney = sMoney;
	}
	public String getyMoney() {
		return yMoney;
	}
	public void setyMoney(String yMoney) {
		this.yMoney = yMoney;
	}
	public String getStuNum() {
		return stuNum;
	}
	public void setStuNum(String stuNum) {
		this.stuNum = stuNum;
	}
	

}
