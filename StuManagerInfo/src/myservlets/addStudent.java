package myservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javabeans.StuDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myclass.stuclass;

public class addStudent extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public addStudent() {
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
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		StuDao stuDao = new StuDao();
		
		String stuName = request.getParameter("stuName");
		String stuNum = request.getParameter("stuNum");
		String stuProgram=request.getParameter("stuProgram");
		String stuNot=request.getParameter("stuNot");
		String stuYear=request.getParameter("stuYear");
		String stuPNo=request.getParameter("stuPNo");
		String stuAddress=request.getParameter("stuAddress");
		String stuYzbm=request.getParameter("stuYzbm");
		String stuZzmm=request.getParameter("stuZzmm");
		String stuSushe=request.getParameter("stuSushe");
		String stuScore=request.getParameter("stuScore");
		String stuSex = request.getParameter("stuSex");
		stuclass s = new stuclass(stuNum, stuName, stuSex, stuProgram, stuNot, stuYear, stuPNo, stuAddress, stuYzbm, stuZzmm, stuSushe, stuScore);
		try {
			boolean flag = stuDao.add(s);
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
