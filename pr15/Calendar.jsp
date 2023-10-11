<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
<%
Calendar cal = Calendar.getInstance();
int year=1919;
int month=3; //주의!! Calendar.MARCH == 2
int start=cal.getMinimum(Calendar.DATE);
cal.set(year, month-1, 1);


int index=cal.get(Calendar.DAY_OF_WEEK);
String[] day={"일", "월", "화", "수", "목", "금", "토"};

int end=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
int cnt=0;
out.print("<h2>"+year+"년 "+month+"월</h2><hr>");

out.print("<table>");
out.print("<tr>");
	for(int i=1; i<index; i++){
		out.print("<td>&nbsp;</td>");
		cnt+=1;
	}
	for(int i=1; i<=end; i++){
		if(cnt%7==0)
			out.print("<tr>");
		out.print("<td>"+i+"</td>");
		cnt+=1;
	}
	out.print("</table>");
%>
</body>
</html>