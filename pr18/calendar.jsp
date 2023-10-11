<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<style>
div {
	font-size: 20px;
	word-spacing: 10px;
}
</style>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
	Calendar cal = Calendar.getInstance();
	int year, month;
	String Year = request.getParameter("YEAR");
	String Month = request.getParameter("MONTH");
	if (Year == "" || Month == "") {
		year = 2022;
		month = 9;
	} else {
		year = Integer.parseInt(Year);
		month = Integer.parseInt(Month);
	}
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);

	cal.set(year, month, start);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);

	String[] day = { " ", "일", "월", "화", "수", "목", "금", "토" };

	int cnt = 0;

	out.println("<h3>" + year + "년 " + (month + 1) + "월</h3>");
	out.println("<hr>");
	out.println("<div>");
	for (int i = start; i <= end;) {
		if (i == 1) {
			for (int k = 0; k < startDay - 1; k++) {
		out.println("&nbsp");
		cnt++;
			}
		}
		out.println(i++);
		cnt++;
		if (cnt % 7 == 0)
			out.println("<br>");

	}
	out.println("</div>");
	%>
</body>
</html>