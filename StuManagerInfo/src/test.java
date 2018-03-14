import javabeans.CourseDao;
import javabeans.MoneyDao;
import javabeans.StuDao;
import javabeans.UserDao;
import myclass.courseclass;
import myclass.moneyclass;
import myclass.stuclass;
import myclass.userclass;


public class test {
	public static void main(String[] args) throws Exception {
		CourseDao courseDao = new CourseDao();
		courseclass c = courseDao.findSusheByid("001", "004");
		
		System.out.println(c);
	}

}
