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

		<title>登录页面</title>

		<style type="text/css">
body {
	background-image: url(Images/bg1.jpg);
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

	<body style="font-weight: 900;">
		<div style="height: 50px; margin-top: 50px;">
			<h1 align="center" style="font-family: 隶书;">
				登录页面
			</h1>

		</div>

		<div align="center" style="height: 250px; margin-top: 40px;">
			<form method="post" style="width: 218px;" action="LoginServlet">
				<br />
				<br />
				&nbsp;姓名：
				<input name="username" type="text" />
				<br />
				<br />
				<br />
				&nbsp;密码：
				<input name="userpwd" type="text" />
				<br />
				<br />
				<br />
				<input name="in_login" type="submit" value="登录" />
			</form>
		</div>

		<div align="center">
			<font style="font-family: 微软雅黑; font-size: 20px; color: orange;">天行健，君子以自强不息！</font>
		</div>

	</body>
</html>
