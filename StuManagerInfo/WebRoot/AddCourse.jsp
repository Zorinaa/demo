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

		<title>My JSP 'AddCourse.jsp' starting page</title>

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
	background-image: url("Images/bg4.jpg")
}
.color {
	color: #881093;
	font-family: 华文新魏;
	font-size: 25px;
}
.t1 {
	background-image: url("Images/tb3.jpg");
	background-repeat: no-repeat;
}
.t2 {
	background-image: url("Images/tb5.jpg");
	background-repeat: no-repeat;
}
.t3 {
	background-image: url("Images/tb1.jpg");
	background-repeat: no-repeat;
}
</style>
	</head>
	<body class="c">
		<div style="margin-left: 220px; margin-top: 70px;">
			<h1 style="font-family: 隶书;">
				学生课程管理页面
			</h1>
			<br />
			<form action="addCourse" method="post">
				<table class="color">

					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学号：
							<input type="text" name="stuNum" size="17">
						</td>
					</tr>
										<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;姓名：
							<input type="text" name="stuName" size="17">
						</td>
					</tr>
					<tr>
						<td>
							课程编号：
							<input type="text" name="cno" size="17">
						</td>
					</tr>
					<tr>
						<td>
							课程名称：
							<input type="text" name="cname" size="17">
						</td>
					</tr>
					<tr>
						<td>
							课程类别：
							<select name="cLeibie">
								<option>
									--请选择课程类型--
								</option>
								<option>
									专业课
								</option>
								<option>
									选修课
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							课程性质：
							<select name="cXingzhi">
								<option>
									--请选择课程性质--
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
						</td>
					</tr>
					<tr>
						<td>
							任课老师：
							<input type="text" name="cTeacher" size="17">
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学分：
							<input type="text" name="cPoint" size="17">
					</tr>
				</table>
				<br />
				<br />
				<div>
					<input type="submit" class="t1" value="添加" />
					&nbsp;&nbsp;
					<input type="reset" class="t2" value="修改" />
					&nbsp;&nbsp;
					<input type="reset" class="t3" value="取消" />
				</div>
		</div>
		</form>
	</body>
</html>
