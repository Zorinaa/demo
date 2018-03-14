<%@page import="myclass.susheclass"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>校园宿舍管理系统</title>
		<style type="text/css">
body {
	background-image: url(Images/bg9.jpg);
}
</style>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="Style/Style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>
			<%
			susheclass stu = new susheclass();
			stu = (susheclass) request.getAttribute("sushe");
		%>
		<center>
			<br />
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td height="110"
						style="font-family: 隶书; font-size: 30px; font-weight: bolder;"
						align="center">
						校园宿舍管理系统
					</td>
				</tr>
				<tr>
					<td height="30">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td height="500" align="center" valign="top">
						<table width="900" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td width="191" height="500" align="center" valign="top">

								</td>
								<td width="100%" align="center" valign="top">
									<table width="896" border="0" cellspacing="0" cellpadding="0"
										height="502">
										<tr>
											<td height="30"
												style="font-size: 22px; color: orange; font-family: 幼圆; margin-left: 200px;">
												学生管理
											</td>
										</tr>
										<tr>
											<td height="470" align="center" valign="top">

												<form name="form1" method="post" action="guanlisushe">
													<table width="100%%" border="0" cellspacing="0"
														cellpadding="0"
														style="padding-left: 20px; font-family: 华文新魏; font-size: 20px;">
														<tr>
															<td width="28%" height="30">
																功能导航：
																<a href="sushe_add.jsp">添加学生</a>
															</td>
															<td width="72%">
																查询：
																<select name="State" id="State">
																	<option value="入住">
																		入住
																	</option>
																	<option value="未入住">
																		未入住
																	</option>
																	<option value="迁出">
																		迁出
																	</option>
																</select>
																<select name="SearchRow" id="SearchRow">
																	<option value="Student_Name">
																		姓名
																	</option>
																	<option value="Student_Username">
																		学号
																	</option>
																	<option value="Student_Class">
																		班级
																	</option>
																</select>
																<select>
																	<option>
																		1号楼
																	</option>
																	<option>
																		2号楼
																	</option>
																	<option>
																		3号楼
																	</option>
																</select>
																&nbsp;&nbsp;学号：
																<input name="stuNum" type="text" class="text1" id="SearchKey">
																<input type="submit" name="button" id="button"
																	value="点击查询">
															</td>
														</tr>
													</table>
													<br />
													<br />
												</form>
												<table width="100%" border="0" cellspacing="0"
													cellpadding="0">
													<td height="30"
														style="font-size: 22px; color: orange; font-family: 幼圆; margin-left: 200px;">
														操作结果
													</td>
													<tr align="center" class="t1">

														<td height="25">
															<strong>学号</strong>
														</td>
														<td>
															<strong>姓名</strong>
														</td>
														<td>
															<strong>性别</strong>
														</td>
														<td>
															<strong>专业</strong>
														</td>
														<td>
															<strong>宿舍楼号</strong>
														</td>
														<td>
															<strong>门牌号</strong>
														</td>
														<td>
															<strong>操作</strong>
														</td>
													</tr>

													<tr align="center">
														<td>
															<%=stu.getStuNum() %>
														</td>
														<td>
															<%=stu.getStuName() %>
														</td>
														<td>
															<%=stu.getStuSex() %>
														</td>
														<td>
															<%=stu.getStuProgram() %>
														</td>
														<td>
															<%=stu.getHomeNum() %>
														</td>
														<td>
															<%=stu.getHomeNo() %>
														</td>
														<td align="center">
															<a href="StudentUpdate.action?Student_ID=${Student_ID}">修改</a>
															<a href="StudentDel.action?Student_ID=${Student_ID}"
																onClick="return confirm('确定要删除该学生吗？')">删除</a>
														</td>
													</tr>

												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td height="35">
						&nbsp;
					</td>
				</tr>
			</table>

		</center>
	</body>
</html>
