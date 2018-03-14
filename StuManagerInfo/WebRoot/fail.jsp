<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style type="text/css">
body {
	background-image: url(Images/bg8.jpg);
}
</style>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String userName = (String) request.getAttribute("userName");
			String msg = (String) request.getAttribute("message");
		%>
		<div
			style="margin-left: 550px; margin-top: 300px; font-family: 华文新魏; font-size: 24px;">
			<%=userName%>
			,对不起，登陆失败！
			<br />
			<font color="red">原因： </font>
			<%=msg%>
		</div>
	</body>
</html>
