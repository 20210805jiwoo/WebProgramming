<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<String> list = (ArrayList<String>) application.getAttribute("addrbook");

	if (list == null) {
		list = new ArrayList<String>();
	}
	list.add(request.getParameter("username") + ", " + request.getParameter("tel"));

	application.setAttribute("addrbook", list);
	int cnt = 0;
	out.print("<center>");
	out.print("<h2>주소록</h2><hr>");
	
	for (String a:list) {
		cnt++;
		out.print(cnt + ". " + a + "<br>");
	}
	out.print("</center>");
	
	%>
</body>
</html>