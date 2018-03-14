
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="myclass.stuclass"%>
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

		<title>学生信息管理页面</title>

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
	background-image: url("Images/bg10.jpg")
}

.font {
	font-family: 华文新魏;
	font-weight: bolder;
	color: #542d24;
	font-size: 23px
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
		<br>
		<h1 align="center" style="font-family: 隶书;">
			学生信息管理页面
		</h1>
		<%
			stuclass stu = new stuclass();
			stu = (stuclass) request.getAttribute("student");
		%>
		<p
			style="font-size: 24px; color: orange; font-family: 幼圆; margin-left: 200px;">
			查询信息
		</p>
		<form method="post" action="guanliStudent" class="font">
			<div style="text-align: center">
				姓名：
				<input type="text" size="12" name="stuName">
				&nbsp; 学号：
				<input type="text" size="12" name="stuNum">
				&nbsp; 专业：
				<input type="text" size="12" name="stuProgram">
				&nbsp;
				<input type="submit" class="t4" value="查询">
			</div>
			<br>
		</form>
		<p
			style="font-size: 24px; color: orange; font-family: 幼圆; margin-left: 200px;">
			查询结果
		</p>
		<table align="center" class="font">
			<tr>
				<th>
					<input type="checkbox" />
				</th>
				<th>
					姓名
				</th>
				<th>
					性别
				</th>
				<th>
					班级
				</th>
				<th>
					学号
				</th>
				<th>
					民族
				</th>
				<th>
					学制
				</th>
				<th>
					身份证号
				</th>
				<th>
					家庭住址
				</th>
				<th>
					邮政编码
				</th>
				<th>
					政治面貌
				</th>
				<th>
					学生宿舍
				</th>
			</tr>
			<tr>
				<td>
					<input type="checkbox" />
				</td>
				<td><%=stu.getStuName()%></td>
				<th><%=stu.getStuSex()%></th>
				<th><%=stu.getStuProgram()%></th>
				<th><%=stu.getStuNum()%></th>
				<th><%=stu.getStuNot()%></th>
				<th><%=stu.getStuYear()%></th>
				<th><%=stu.getStuPNo()%></th>
				<th><%=stu.getStuAddress()%></th>
				<th><%=stu.getStuYzbm()%></th>
				<th><%=stu.getStuZzmm()%></th>
				<th><%=stu.getStuSushe()%></th>
			</tr>
		</table>
		<br />
		<br />
		<div style="text-align: center">
			<input type="button" class="t2" value="修改">
			&nbsp;&nbsp;
			<input type="button" class="t5" value="删除">
		</div>
	</body>
</html>
