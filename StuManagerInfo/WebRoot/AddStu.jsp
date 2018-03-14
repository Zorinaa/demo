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

		<title>My JSP 'Course.jsp' starting page</title>

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
	background-image: url("Images/bg8.jpg");
}

.font {
	font-family: 华文新魏;
	color: #F06153;
	font-size: 25px
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
		<br />
		<h1 align="center" style="font-family: 隶书;">
			学生课程管理页面
		</h1>
		<
		<br />
		<form method="post" action="addStudent">

			<table align="center" class="font">
				<tr>
					<td>
						姓名：
						<input type="text" name="stuName" size="12">
					</td>
					<td width="80"></td>
					<td>
						身份证号：
						<input type="text" name="stuPNo" size="17">
					</td>
				</tr>
				<tr>
					<td>
						学制：
						<input type="text" name="stuYear" size="12">
					</td>
					<td></td>
					<td>
						家庭住址：
						<input type="text" name="stuAddress" size="17">
					</td>
				</tr>
				<tr>
					<td>
						专业：
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
					</td>
					<td></td>
					<td>
						邮政编码：
						<input type="text" name="stuYzbm" size="17">
					</td>
				</tr>
				<tr>
					<td>
						学号：
						<input type="text" name="stuNum" size="12">
					</td>
					<td></td>
					<td>
						政治面貌：
						<select name="stuZzmm">
							<option selected>
								--请选择政治面貌--
							</option>
							<option>
								共青团员
							</option>
							<option>
								党员
							</option>
							<option>
								无
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						民族：
						<input type="text" name="stuNot" size="12">
					</td>
					<td></td>
					<td>
						学生宿舍：
						<input type="text" name="stuSushe" size="17">
					</td>
				</tr>
				<tr>
					<td>
						性别：
						<input type="radio" name="stuSex" value="男">
						男
						<input type="radio" name="stuSex" value="女">
						女
					</td>
					<td></td>
				</tr>
			</table>
			<br />
			<br />
			<div style="text-align: center">
				<input type="submit" class="t1" value="添加" />
				&nbsp;&nbsp;
				<input type="reset" class="t2" value="修改" />
				&nbsp;&nbsp;
				<input type="reset" class="t3" value="取消" />
			</div>

		</form>
	</body>
</html>
