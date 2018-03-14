package myservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javabeans.CourseDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myclass.courseclass;
import myclass.stuclass;

public class addCourse extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public addCourse() {
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
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
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
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//System.out.println("222");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		CourseDao courseDao=new CourseDao();
		String stuNum = request.getParameter("stuNum");
		String stuName = request.getParameter("stuName");
		String cno = request.getParameter("cno");
		String cname  = request.getParameter("cname");
		String cLeibie =request.getParameter("cLeibie");
		String cXingzhi =request.getParameter("cXingzhi");
		String cTeacher =request.getParameter("cTeacher");
		String cPoint =request.getParameter("cPoint");
		 
		courseclass s = new courseclass(stuNum, stuName, cno, cname, cLeibie, cXingzhi, cTeacher, cPoint);
		try {
			boolean flag = courseDao.add(s);
			if(flag){
				request.getRequestDispatcher("addok.jsp").forward(request, response);
			}
			else {
				request.getRequestDispatcher("fail.jsp").forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
