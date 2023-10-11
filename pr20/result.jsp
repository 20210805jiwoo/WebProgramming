<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Enumeration"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 20</title>
</head>
<body>
	<%
	out.println("<h2>전달된 파라미터 이름들</h2>");

	String type = request.getParameter("type");
	String strID = request.getParameter("strID");
	String strPwd = request.getParameter("strPwd");

	Enumeration<String> e = request.getParameterNames();
	while(e.hasMoreElements()) {
		String s = e.nextElement();
		out.println(s + "<br>");
	}
	out.print("<hr>");
	String str1 = type;
	String str2 = strID;
	String str3 = strPwd;
	out.print("타입 : " + str1 +"<br>");
	out.print("아이디 : " + str2 +"<br>");
	out.print("패스워드 : " + str3 +"<br>");
	%>
</body>
</html>