<%@ page language="java" import="java.util.*" pageEncoding="gb2312"
	contentType="text/html"%>



<html>
	<head>
		<style type="text/css">
a:link {
	color: #000000; /*链接颜色*/
	text-decoration: none; /*无下划线*/
}

a:visited {
	text-decoration: none; /*无下划线*/ /*color: #00FF00;*/ /*已访问过颜色*/
}

a:hover {
	text-decoration: none; /*无下划线*/
	color: #000000; /*鼠标经过颜色*/
}

a:active {
	text-decoration: none; /*无下划线*/
	color: #000000; /*活动链接颜色*/
}
</style>
	</head>

	<body style="background-color: #eff0f4">
		<!--学生信息管理-->
		<div
			style="border: solid red 1px; width: 100%; background-color: #eff0f4;">
			<div align="center" style="width: 100%; background-color: #eff0f4;">
				<div style="color: red; border: 1px solid red">
					<h3>
						学生信息管理
					</h3>
				</div>
				<br />
				<div>
					<P>
						<a target="index_right" href="QueryStu.jsp">学生基本信息管理</a>
					</P>
					<P>
						<a target="index_right" href="AddStu.jsp">学生基本信息添加</a>
					</P>
				</div>
			</div>

			<!--宿舍管理-->
			<div align="center" style="width: 100%; background-color: #eff0f4;">
				<div style="color: red; border: 1px solid red">
					<h3>
						宿舍信息管理
					</h3>
				</div>
				<div>
					<P>
						<a href="sushe_add.jsp" target="index_right">宿舍信息添加</a>
					</P>
					<P>
						<a href="sushe_guanli.jsp" target="index_right">宿舍信息管理</a>
					</P>
				</div>
			</div>
		</div>

		<!--课程信息管理-->
		<div
			style="border: solid 1px red; width: 100%; background-color: #eff0f4;">
			<div align="center" style="width: 100%;">
				<div style="color: red; border: 1px solid red">
					<h3>
						课程管理
					</h3>
				</div>
				<div>
					<P>
						<a target="index_right" href="QueryCourse.jsp">课程信息管理</a>
					</P>
					<P>
						<a target="index_right" href="AddCourse.jsp">课程信息添加</a>
					</P>
				</div>
			</div>



			<!--成绩管理-->
			<div
				style="border: solid 1px red; width: 100%; background-color: #eff0f4;">
				<div align="center" style="width: 100%;">
					<div style="color: red; border: 1px solid">
						<h3>
							成绩查询
						</h3>
					</div>
					<div>
						<p>
							<a href="fenshu_info.jsp" target="index_right">学生成绩管理 </a>
						</p>
					</div>
				</div>


				<!--缴费管理-->
				<div
					style="border: solid 1px red; width: 100%; background-color: #eff0f4;">
					<div align="center" style="width: 100%;">
						<div style="color: red; border: 1px solid red">
							<h3>
								缴费管理
							</h3>
						</div>
						<div>
							<P>
								<a href="jiaofei_add.jsp" target="index_right">学生缴费管理</a>
							</P>
							<P>
								<a href="jiaofei_guanli.jsp" target="index_right">学生缴费查询</a>
							</P>
						</div>
					</div>
	</body>
</html>
