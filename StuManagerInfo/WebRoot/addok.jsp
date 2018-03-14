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

		<title>My JSP 'addok.jsp' starting page</title>
		<style type="text/css">
body {
	background-image: url(Images/bg8.jpg);
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
		<p
			style="font-family: 华文隶书; font-size: 32px; margin-top: 250px; margin-left: 600px; color: orange;">
			添加成功
		</p>
		<p style="font-family: 华文新魏; font-size: 32px; margin-left: 580px;">
			<a href="index.jsp">返回主页面</a>
		</p>
	</body>
</html>
