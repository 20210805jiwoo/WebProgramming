<%@ tag language="java" pageEncoding="UTF-8"%>
<body>
<style>
table {
width:380px;
}
</style>
	<%
	out.println("<div align=\"center\">");
	out.println("<table border=\"1\">");
	out.println("<h2>구구단 출력</h2>");
	out.println("<hr>");
	out.println("<tr>");
	for (int i = 2; i < 10; i++) {
		if (i == 2 || i == 6)
			out.println("<tr>");
		out.println("<td>");
		for (int j = 1; j < 10; j++) {
			out.println("&nbsp;" + i + "*" + j + "=" + i * j);
		}
		out.println("</td>");
		if (i == 5 || i == 9)
			out.println("</tr>");
	}
	out.println("</tr>");
	out.println("</div>");
	out.println("</table>");
	%>
</body>