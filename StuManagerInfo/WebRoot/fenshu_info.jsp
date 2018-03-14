<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	contentType="text/html"%>
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

		<title>My JSP 'course_info.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<style type="text/css">
body {
	background-image: url("Images/bg9.jpg");
	background-repeat: ;
}
</style>

	</head>

	<body>
		<br />
		<br />
		<br />
		<h1 align="center" style="font-family: 隶书;">
			学生查询管理页面
		</h1>
		<p
			style="font-family: 幼圆; font-size: 24px; color: orange; margin-left: 100px;">
			查询信息
		</p>
		<div align="center">
			<form>
				学号：
				<input name="stuName" type="text" size="12" />
				&nbsp; 学年：
				<select name="xuenian">
					<option selected>
						---请选择要查询的学年---
					</option>
					<option>
						2012-2013学年
					</option>
					<option>
						2013-2014学年
					</option>
					<option>
						2014-2015学年
					</option>
					<option>
						2015-2016学年
					</option>
					<option>
						2016-2017学年
					</option>
				</select>
				考试性质：
				<select name="kaoshixingzhi">
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
				学年：
				<select>
					<option selected>
						---请选择学年---
					</option>
					<option>
						第一学年
					</option>
					<option>
						第二学年
					</option>
				</select>

				<input name="chaxun" value="查询" type="submit">
			</form>
		</div>
		<div>
			<p
				style="font-family: 幼圆; font-size: 24px; color: orange; margin-left: 100px;">
				查询结果
			</p>
			<table style="text-align: center;" align="center" border="10px;">

				<tr>

					<td width="70px">
						学号
					</td>
					<td width=70px">
						姓名
					</td>
					<td width="70px">
						学年
					</td>
					<td width="70px">
						学期
					</td>
					<td width="70px">
						课程
					</td>
					<td width="70px">
						课程类别
					</td>
					<td width="70px">
						课程性质
					</td>
					<td width="70px">
						学分
					</td>
					<td width="70px">
						考试性质
					</td>
					<td width="70px">
						总分
					</td>
				</tr>

				<tr>
					<td>
						2014010456
					</td>
					<td>
						jianglai
					</td>
					<td>
						2016-2014学年
					</td>
					<td>
						第一学期
					</td>
					<td>
						javaweb程序设计
					</td>
					<td>
						专业课
					</td>
					<td>
						首修
					</td>
					<td>
						2.0
					</td>
					<td>
						闭卷
					</td>
					<td>
						88.3
					</td>
				</tr>
			</table>
		</div>
		<br />
		<br />
		<br />
		<div align="center">
			<font style="font-family: 华文琥珀; font-size: 20px; color: orange;">天道酬勤！</font>
		</div>
	</body>
</html>
