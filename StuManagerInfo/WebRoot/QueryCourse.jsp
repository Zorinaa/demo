<%@page import="myclass.courseclass"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'QueryCourse.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style type="text/css">
.c {
	background-image: url("Images/bg7.jpg")
}

.font {
	font-family: 华文新魏;
	font-weight: bolder;
	color: #542d24;
	font-size: 25px;
}

.t4 {
	background-image: url("Images/tb4.jpg");
	background-repeat: no-repeat;
}

.t2 {
	background-image: url("Images/tb5.jpg");
	background-repeat: no-repeat;
}

.t5 {
	background-image: url("Images/tb2.jpg");
	background-repeat: no-repeat;
}
</style>
	</head>

	<body class="c">
		<%
			courseclass stu = new courseclass();
			stu = (courseclass) request.getAttribute("course");
		%>
		<h1 align="center" style="font-family: 隶书;">
			学生课程查询页面
		</h1>

		<p
			style="font-size: 24px; color: orange; font-family: 幼圆; margin-left: 100px;">
			查询信息
		</p>
		<form method="post" action="guanlicourse">
		<div class="font" style="text-align: center">
			学号：
			<input type="text" size="12" name="stuNum">
			&nbsp; 课程号：
			<input type="text" size="12" name="cnos">
			考试性质：
			<select>
				<option selected>
					---请选择考试性质---
				</option>
				<option>
					首修
				</option>
				<option>
					重修
				</option>
				<option>
					补考
				</option>
			</select>
			&nbsp;
			<input type="submit" class="t4" value="查询">
		</div></form>
		<br>

		<p
			style="font-size: 24px; color: orange; font-family: 幼圆; margin-left: 100px;">
			查询结果
		</p>
		<table class="font" align="center">
			<tr>
				<th>
					<input type="checkbox" />
				</th>
				<th>
					学号
				</th>
				<th>
					姓名
				</th>
				<th>
					课程编号
				</th>
				<th>
					课程名称
				</th>
				<th>
					课程类别
				</th>
				<th>
					课程性质
				</th>
				<th>
					任课老师
				</th>
				<th>
					学分
				</th>
			</tr>
			<tr>
				<th>
					<input type="checkbox" />
				</th>
				<th>
					<%=stu.getStuNum() %>
				</th>
				<th><%=stu.getStuName() %></th>
				<th><%=stu.getCno() %></th>
				<th><%=stu.getCname() %></th>
				<th><%=stu.getcLeibie() %></th>
				<th><%=stu.getcXingzhi() %></th>
				<th><%=stu.getcTeacher() %></th>
				<th><%=stu.getCpoint() %></th>
			</tr>
		</table>
		<br />
		<div style="text-align: center">
			<input type="button" class="t2" value="修改">
			&nbsp;&nbsp;
			<input type="button" class="t5" value="删除">
		</div>
	</body>
</html>
