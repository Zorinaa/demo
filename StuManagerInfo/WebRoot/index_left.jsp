<%@ page language="java" import="java.util.*" pageEncoding="gb2312"
	contentType="text/html"%>



<html>
	<head>
		<style type="text/css">
a:link {
	color: #000000; /*������ɫ*/
	text-decoration: none; /*���»���*/
}

a:visited {
	text-decoration: none; /*���»���*/ /*color: #00FF00;*/ /*�ѷ��ʹ���ɫ*/
}

a:hover {
	text-decoration: none; /*���»���*/
	color: #000000; /*��꾭����ɫ*/
}

a:active {
	text-decoration: none; /*���»���*/
	color: #000000; /*�������ɫ*/
}
</style>
	</head>

	<body style="background-color: #eff0f4">
		<!--ѧ����Ϣ����-->
		<div
			style="border: solid red 1px; width: 100%; background-color: #eff0f4;">
			<div align="center" style="width: 100%; background-color: #eff0f4;">
				<div style="color: red; border: 1px solid red">
					<h3>
						ѧ����Ϣ����
					</h3>
				</div>
				<br />
				<div>
					<P>
						<a target="index_right" href="QueryStu.jsp">ѧ��������Ϣ����</a>
					</P>
					<P>
						<a target="index_right" href="AddStu.jsp">ѧ��������Ϣ���</a>
					</P>
				</div>
			</div>

			<!--�������-->
			<div align="center" style="width: 100%; background-color: #eff0f4;">
				<div style="color: red; border: 1px solid red">
					<h3>
						������Ϣ����
					</h3>
				</div>
				<div>
					<P>
						<a href="sushe_add.jsp" target="index_right">������Ϣ���</a>
					</P>
					<P>
						<a href="sushe_guanli.jsp" target="index_right">������Ϣ����</a>
					</P>
				</div>
			</div>
		</div>

		<!--�γ���Ϣ����-->
		<div
			style="border: solid 1px red; width: 100%; background-color: #eff0f4;">
			<div align="center" style="width: 100%;">
				<div style="color: red; border: 1px solid red">
					<h3>
						�γ̹���
					</h3>
				</div>
				<div>
					<P>
						<a target="index_right" href="QueryCourse.jsp">�γ���Ϣ����</a>
					</P>
					<P>
						<a target="index_right" href="AddCourse.jsp">�γ���Ϣ���</a>
					</P>
				</div>
			</div>



			<!--�ɼ�����-->
			<div
				style="border: solid 1px red; width: 100%; background-color: #eff0f4;">
				<div align="center" style="width: 100%;">
					<div style="color: red; border: 1px solid">
						<h3>
							�ɼ���ѯ
						</h3>
					</div>
					<div>
						<p>
							<a href="fenshu_info.jsp" target="index_right">ѧ���ɼ����� </a>
						</p>
					</div>
				</div>


				<!--�ɷѹ���-->
				<div
					style="border: solid 1px red; width: 100%; background-color: #eff0f4;">
					<div align="center" style="width: 100%;">
						<div style="color: red; border: 1px solid red">
							<h3>
								�ɷѹ���
							</h3>
						</div>
						<div>
							<P>
								<a href="jiaofei_add.jsp" target="index_right">ѧ���ɷѹ���</a>
							</P>
							<P>
								<a href="jiaofei_guanli.jsp" target="index_right">ѧ���ɷѲ�ѯ</a>
							</P>
						</div>
					</div>
	</body>
</html>
