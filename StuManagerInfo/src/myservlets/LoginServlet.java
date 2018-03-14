package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javabeans.UserDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myclass.userclass;

import com.sun.crypto.provider.RSACipher;

public class LoginServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public LoginServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// System.out.println("已经连接到Servlet");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String result = "";
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		String in_login = request.getParameter("in_login");
		request.setAttribute("username", username);
		request.setAttribute("userpwd", userpwd);
		if ("登录".equals(in_login)) {
			if (username == "" || username == null || username.length() > 20) {
				try {
					result = "请输入用户名（不能超过20个字符）";
					request.setAttribute("message", result);
					request.getRequestDispatcher("fail.jsp").forward(request,
							response);
					return;
				} catch (Exception e) {
					e.printStackTrace();
				}
			} else if (userpwd == "" || userpwd == null
					|| userpwd.length() > 20) {
				try {
					result = "请输入密码（不能超过20个字符）";
					request.setAttribute("message", result);
					request.getRequestDispatcher("fail.jsp").forward(request,
							response);
					return;
				} catch (Exception e) {
					e.printStackTrace();
				}
			}

			userclass users = new userclass(username, userpwd);
			UserDao userDao = new UserDao();
			if (userDao.isLogin(users)) {
				request.getRequestDispatcher("index.jsp").forward(request,
						response);
			} else {
				result = "用户名或密码错误！";
				request.setAttribute("message", result);
				request.getRequestDispatcher("fail.jsp").forward(request,
						response);
			}
		}

	}

	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
