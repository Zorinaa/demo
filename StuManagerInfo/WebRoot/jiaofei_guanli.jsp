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

		<title>缴费页面</title>
		<style type="text/css">
body {
	background-image: url(Images/bg11.jpg);
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

		<h1 align="center" style="font-family: 隶书;">
			学生缴费查询页面
		</h1>
		<p
			style="font-family: 幼圆; font-size: 18px; color: orange; margin-left: 140px;">
			查询信息
		</p>
		<div style="font-family: 华文新魏; font-size: 18px;" align="center">
			学号:
			<input name="stu_no" type="text" size="10" />
			&&nbsp;&nbsp;&nbsp; 姓名:
			<input name="stu_no" type="text" size="10" />
			&&nbsp;&nbsp;&nbsp; 性别:
			<select>
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
			&&nbsp;&nbsp;&nbsp; 专业:
			<select>
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
			<input name="stu_select" type="button" value="查询" />
		</div>
		<div>
			<p
				style="font-family: 幼圆; font-size: 18px; color: orange; margin-left: 140px;">
				查询结果
			</p>
			<table boder="1" width="800px" align="center"
				style="font-family: 华文新魏; font-size: 18px; color: ; text-align: center">
				<tr>
					<th>
						学号
					</th>
					<th>
						姓名
					</th>
					<th>
						性别
					</th>
					<th>
						专业
					</th>
					<th>
						应缴费
					</th>
					<th>
						已缴费
					</th>
				</tr>
				<tr>
					<td>
						1
					</td>
					<td>
						1
					</td>
					<td>
						1
					</td>
					<td>
						1
					</td>
					<td>
						1
					</td>
					<td>
						1
					</td>
				</tr>
			</table>
		</div>
		<p
			style="font-family: 幼圆; font-size: 18px; color: orange; margin-left: 140px;">
			留言
		</p>
		<div align="center">
			<textarea name="userBasicInfo" rows="8" cols="100"></textarea>
			<br />
			<input type="submit" value="提交" />
		</div>
	</body>
</html>
