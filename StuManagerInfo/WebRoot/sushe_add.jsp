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
	background-image: url(Images/bg6.jpg);
}
</style>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link href="Style/Style.css" rel="stylesheet" type="text/css" />
	</head>
	<script language="JavaScript">

function mycheck() {
	if (isNull(form1.Student_Username.value)) {
		alert("请输入学号！");
		return false;
	}
	if (isNull(form1.Student_Password.value)) {
		alert("请输入密码！");
		return false;
	}
	if (isNull(form1.Student_Password2.value)) {
		alert("请输入重复密码！");
		return false;
	}
	if (document.form1.Student_Password.value != document.form1.Student_Password2.value) {
		alert("您两次输入的新密码不一致！请重新输入！");
		return false;
	}
	if (isNull(form1.Student_Name.value)) {
		alert("请输入姓名！");
		return false;
	}
	if (isNull(form1.Student_Sex.value)) {
		alert("请选择性别！");
		return false;
	}
	if (isNull(form1.Student_Class.value)) {
		alert("请输入班级！");
		return false;
	}
}

function isNull(str) {
	if (str == "")
		return true;
	var regu = "^[ ]+$";
	var re = new RegExp(regu);
	return re.test(str);
}
</script>
	<body>
		<center>
			<form action="addSushe" method="post">
				<table width="100%" border="0" cellspacing="0" cellpadding="0"
					style="font-family: 黑体;">
					<tr>
						<td height="60"
							style="color: #06F; font-size: 30px; font-weight: bolder; padding-left: 50px; font-family: 隶书">
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
									<td width="709" align="center" valign="top">
										<table width="895" border="0" cellspacing="0" cellpadding="0"
											height="504">
											<tr>
												<td height="10" style="padding-left: 25px;">
													添加入住学生
												</td>
											</tr>
											<tr>
												<td height="470" align="center" valign="top">
													<form name="form1" method="post">
														<table width="100%" border="0" cellspacing="0"
															cellpadding="0">
															<tr>
																<td width="50%" height="30" align="right">
																	&nbsp;
																</td>
																<td width="67%">
																	&nbsp;
																</td>
															</tr>
															<tr>
																<td height="30" align="right">
																	<span style="color: red;">*</span>学号：
																</td>
																<td>
																	<input name="stuNum" type="text">
																</td>
															</tr>
															<tr>
																<td height="30" align="right">
																	<span style="color: red;">*</span>姓名：
																</td>
																<td>
																	<input name="stuName" type="text" class="text2"
																		id="Student_Name">
																</td>
															</tr>
															<tr>
																<td height="30" align="right">
																	<span style="color: red;">*</span>性别：
																</td>
																<td>
																	<select name="stuSex" id="Student_Sex">
																		<option value="">
																			请选择
																		</option>
																		<option value="男">
																			男
																		</option>
																		<option value="女">
																			女
																		</option>
																	</select>
																</td>
															</tr>
															<tr>
																<td height="30" align="right">
																	<span style="color: red;">*</span>专业：
																</td>
																<td>
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
															</tr>
															<tr>
																<td height="30" align="right">
																	<span style="color: red;">*</span>宿舍楼号：
																</td>
																<td>
																	<input name="homeNum" type="text">
																</td>
															</tr>
															<tr>
																<td height="30" align="right">
																	<span style="color: red;">*</span>宿舍门牌号：
																</td>
																<td>
																	<input name="homeNo" type="text">
																</td>
															</tr>
															<tr>
																<td height="30">
																	&nbsp;
																</td>
																<td>
																	<input type="submit" name="button" id="button"
																		value="添加学生">
																	&nbsp;&nbsp;
																	<input type="reset" name="button2" id="button2"
																		value="返回上页" onClick="javascript:history.back(-1);">
																</td>
															</tr>
														</table>
													</form>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
					</tr>

				</table>
			</form>
		</center>
	</body>
</html>
