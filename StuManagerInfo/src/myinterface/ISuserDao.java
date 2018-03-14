package myinterface;

import myclass.userclass;

public interface ISuserDao {
	public boolean isLogin(userclass user);

	public abstract userclass find(userclass user) throws Exception;
}
