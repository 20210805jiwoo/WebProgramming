<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이상한 나라</title>
</head>
<body>
	<center>
		<h2>Alice in Wonderland</h2>
	</center>
	<table>
		<tr>
			<td><jsp:include page="viewer.jsp"></jsp:include></td>
			<td><%=request.getParameter("username")%>님 환영합니다.<br> <br>
				<input type="submit" name="logout" value="로그아웃"></td>
		</tr>
	</table>
</body>
</html>