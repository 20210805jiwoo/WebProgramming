<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 18</title>
<style>
.main {
	border: 0px
}
</style>
</head>
<body>
	<div align="CENTER">
		<h2>Include Action Practice</h2>
		<hr>
		<table border=0 cellpadding=5 cellspacing=1>
			<tr>
				<td class="main"><jsp:include page="calendar.jsp">
						<jsp:param name="YEAR" value="2017" />
						<jsp:param name="MONTH" value="9" />
					</jsp:include></td>
				<td class="main" width="20">&nbsp;</td>
				<td class="main"><jsp:include page="news.jsp">
						<jsp:param name="TASK1" value="" />
						<jsp:param name="TASK2" value="Homework" />
					</jsp:include></td>
			</tr>
		</table>
	</div>


</body>
</html>