<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주소록 입력</title>
</head>
<body>
	<form name="form1" method="post" action="add.jsp">
		이름: <input type="text" name="username"> 
		전화번호: <input type="text" name="tel">
		<input type="submit" name="submit" value="등록">
	</form>
</body>
</html>