<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 11</title>
<style type="text/css">
table, td, tr {
	border: solid 1px gray;
	width: 400px;
	text-align: center;
}

td, tr {
	text-align: left;
}
</style>
</head>
<body>
	<%
	out.println("<div align=\"center\">");
	out.println("<table border=\"1\" width=\"40%\">");
	out.println("<h2>구구단 출력</h2>");
	out.println("<hr>");
	out.println("<tr>");
	for (int i = 2; i < 10; i++) {
		if(i==2||i==6)
			out.println("<tr>");
		out.println("<td>");
		for (int j = 1; j < 10; j++) {
			out.println("&nbsp;"+i + "*" + j + "=" + i * j);
		}
		out.println("</td>");
		if (i==5||i==9)
			out.println("</tr>");
	}
	out.println("</tr>");
	out.println("</div>");
	out.println("</table>");
	%>
</body>
</html>