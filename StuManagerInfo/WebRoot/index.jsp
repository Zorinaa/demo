<%@ page language="java" import="java.util.*" pageEncoding="gb2312"
	contentType="text/html"%>



<html>
	<head>

	</head>
	<!-- 
             设置成横向三段，垂直方向两端
     noresize="noresize"  ---  不可调整大小
     
      第一段   ---  题目
      第二段   ---  设置中间部分    左侧为导航      右侧为显示页面
      第三段   ---  底部  
   -->

	<frameset rows="10%,80%,10%">
		<frame scrolling="no" src="index_top.jsp">
		<frameset cols="20%,80%">
			<frame src="index_left.jsp" noresize="noresize">
			<frame name="index_right" scrolling="no" src="index_right.jsp">
		</frameset>
		<frame scrolling="no" src="bottom_show.jsp">
	</frameset>
	</div>
</html>
