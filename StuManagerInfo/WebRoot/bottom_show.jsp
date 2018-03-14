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

		<script type="text/javascript">
function startTime() {
	var today = new Date()
	var h = today.getHours()
	var m = today.getMinutes()
	var s = today.getSeconds()
	m = checkTime(m)
	s = checkTime(s)
	document.getElementById('txt').innerHTML = h + ":" + m + ":" + s
	t = setTimeout('startTime()', 500)
}

function checkTime(i) {
	if (i < 10) {
		i = "0" + i
	}
	return i
}
</script>

	</head>

	<body onload="startTime()" style="background-color: orange;">
		<div
			style="float: right; margin-right: 100px; font-family: 幼圆; color: blue;">
			当前时间：
			<span id="txt"></span>
		</div>
	</body>
</html>
