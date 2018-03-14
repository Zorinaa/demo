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

		<title>缴费管理页面</title>
		<style type="text/css">
body {
	background-image: url(Images/bg6.jpg);
}
</style>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>


		<form method="post" action="addMoney">
			<h1 align="center" style="font-family: 隶书; margin-top: 160px;">
				缴费管理页面
			</h1>
			<div
				style="font-family: 华文新魏; color: blue; font-size: 24px; margin-top: 30px;"
				align="center">

				* 学号:
				<input name="stuNum" type="text" size="14" />
				&     &nbsp;&nbsp;&nbsp;
				<br />
				* 姓名:
				<input name="stuName" type="text" size="14" />
				&&nbsp;&nbsp;&nbsp;
				<br />
				* 性别:
				<select name="stuSex">
					<option>
						--请选择性别--
					</option>
					<option>
						男
					</option>
					<option>
						女
					</option>
				</select>
				&&nbsp;&nbsp;&nbsp;
				<br />
				* 专业:
				<select name="stuProgram">
					<option>
						--请选择专业--
					</option>
					<option>
						软件工程
					</option>
					<option>
						网络工程
					</option>
					<option>
						机械工程
					</option>
					<option>
						营销管理
					</option>
					<option>
						经济贸易
					</option>
					<option>
						影视传媒
					</option>
				</select>
				&&nbsp;&nbsp;&nbsp;
				<br />
				* 应缴费用:￥
				<input name="sMoney" type="text" size="8" value="10000" />
				<br />
				* 已缴费用: ￥
				<input name="yMoney" type="text" size="8" />
				<br />
				<input name="stu_select" type="submit" value="提交" />
			</div>

		</form>
	</body>
</html>
