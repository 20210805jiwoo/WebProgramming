<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 23</title>
</head>
<body>
	<form method=get action=page_control_02.jsp>
		아이디: <input type=text name=username> 
		비밀번호: <input type=text name=password> <input type=submit value="forward 전송"><br>
		</form>
		<form method=get action=page_control_03.jsp>
		아이디: <input type=text name=username>
		비밀번호: <input type=text name=password> <input type=submit value="sendRedirect 전송">
		</form>
</body>
</html>