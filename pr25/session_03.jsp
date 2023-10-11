<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session Object: 03</title>
</head>
<body>
	<%
	long time;
	time = session.getLastAccessedTime() - session.getCreationTime();
	out.print("세션이 생성된 후 " + time / 1000 + "초가 지났습니다.");
	%>
</body>
</html>