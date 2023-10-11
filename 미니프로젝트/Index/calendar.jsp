<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Calendar" import="java.util.*"
	import="java.io.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%!int sat, sun;

	public String parseDay(int cnt, String day) {
		if (day == "일") {
			sun = cnt;
			return "<font color='red'>일</font>";
		}
		if ((cnt - sun) % 7 == 0)
			return "<font color='red'>" + day + "</font>";
		else
			return day;
	}%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Problem 02</title>
</head>
<style>
div {
	text-align: center;
	width: 75%;
	margin: auto;
}

table, td {
	border-collapse: collapse;
	border: solid gray 1px;
}

table {
	margin: auto;
	text-align: center;
	width: 75%;
	height: 250px;
}

table.table2 {
	margin: auto;
	text-align: center;
	width: 75%;
	height: 30px;
	border-top: none;
	border-bottom: none;
	border-left: none;
	border-right: none;
}
</style>
</head>
<body>

	<%
	Calendar cal = Calendar.getInstance();

	int count = 0;
	String[] days = { "일", "월", "화", "수", "목", "금", "토" };

	String sYear = request.getParameter("YEAR");
	if (sYear == null) {
		sYear = "2008";
	}
	int year = Integer.parseInt(sYear);
	String sMonth = request.getParameter("MONTH");
	if (sMonth == null) {
		sMonth = "6";
	}
	int month = Integer.parseInt(sMonth);

	out.print("<br>");
	out.print("<div align=\"center\">");
	out.print("<table class=\"table2\">");

	//년도 변경
	out.print("<th style=\"text-align: left;\">");
	out.print("<a href=\"calendar.jsp?YEAR=" + (year - 1));

	out.print("&YEAR=" + year + "&MONTH=" + month + "\">" + "◀</a>");
	out.print(year + "년");
	out.print("<a href=\"calendar.jsp?YEAR=" + (year + 1));
	out.print("&YEAR=" + year + "&MONTH=" + month + "\">" + "▶</a>");
	out.print("</th>");

	//월 변경
	out.print("<th>");
	if (month == 1) {
		out.print("◀");
	} else {
		out.print("<a href=\"calendar.jsp?MONTH=" + (month - 1));
		out.print("&MONTH=" + month + "&YEAR=" + year + "\">" + "◀</a>");
	}
	out.print(month + "월");

	if (month == 12) {
		out.print("▶");
	} else {
		out.print("<a href=\"calendar.jsp?MONTH=" + (month + 1));
		out.print("&MONTH=" + month + "&YEAR=" + year + "\">" + "▶</a>");
	}
	out.print("</th>");

	//오늘 날짜 출력
	out.print("<th style=\"text-align: right;\">");
	%>
<c:set var="today" value="<%=new java.util.Date()%>" />
<fmt:formatDate value="${today}" pattern="yyyy-MM-d" />
	<%
	out.print("</th>");
	out.print("</table>");
	out.print("<br>");

	cal.set(year, month, 1); //년도/월 세팅
	int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);//특정월의마지막 날짜
	int startDay = cal.get(Calendar.DAY_OF_WEEK);

	out.println("<table>");
	out.print("<tr>");
	for (int i = 0; i < 7; i++) {
		out.print("<td>");
		out.print(parseDay(count, days[i]));
		out.print("</td>");
		count++;
	}
	out.println("</tr>");
	for (int i = start; i < end + startDay - 1;) {
		if (count % 7 == 0)
			out.println("<tr>");
		if (i == 1) {
			for (int k = 0; k < startDay - 1; k++) {
		out.println("<td>&nbsp</td>");
		count++;
			}
		}
		if (i <= end) {
			out.print("<td>");
			out.print(parseDay(count, String.valueOf(i)));
			out.println("</td>");
			i++;
			count++;
		}
		if (i > end) {
			i++;
			count++;
			if (count % 7 == 0)
		return;
		}

		if (count % 7 == 0)
			out.println("</tr>");
	}

	out.print("</table>");
	out.print("</div>");
	%>

</body>
</html>