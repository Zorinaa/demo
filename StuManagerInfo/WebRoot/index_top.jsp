<%@ page language="java" import="java.util.*" pageEncoding="gb2312"
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

		<title>My JSP 'index_top.jsp' starting page</title>
		<style type="text/css">
body {
	background-image: url(Images/bg3.jpg);
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
		<div align="center">
			<p>
				<h2 style="font-family: 隶书; font-size: 30px;">
					学生管理系统
				</h2>
			</p>
		</div>
	</body>
</html>
