<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Application Object: 02</title>
</head>
<body>
	<%
	session.setMaxInactiveInterval(Integer.parseInt(request.getParameter("time")) * 60);
	Integer count = (Integer) application.getAttribute("count");
	if (count == null)
		count = 0;
	count = count + 1;
	application.setAttribute("count", count);
	%>
	<%= request.getParameter("username") %>님 환영합니다.<br><br>
	세션 ID: <%= session.getId() %><br>
	세션 지속시간: <%= request.getParameter("time") %>초<br><br>
	오늘의 접속자수: <%= count %>
</body>
</html>