<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page_control_04.jsp</title>
</head>
<body>
	<div>
		page_control_03.jsp에서 전달된 내용입니다.<br> page_control_04.jsp에서 출력합니다.
		<hr>
		넘겨받은 파라미터들 <br>

		<%
		Enumeration<String> e = request.getParameterNames();
		while (e.hasMoreElements()) {
			String s = e.nextElement();
			out.print(s + ":" + request.getParameter(s) + "<br>");
		}
		out.print("<hr>");
		%>
		<%
		out.print("안녕하세요, " + request.getParameter("username") + "님. 반갑습니다.");
		out.print("<hr>");
		%>
	</div>
</body>
</html>