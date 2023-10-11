<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Calendar"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 14</title>
</head>
<body>
<%
Calendar cal=Calendar.getInstance();
int year=cal.get(Calendar.YEAR);
int month=cal.get(Calendar.MONTH)+1;
int date=cal.get(Calendar.DATE);
int day_idx=cal.get(Calendar.DAY_OF_WEEK);
cal.set(2018,Calendar.OCTOBER,8);
String[] day={" ","일","월","화","수","목","금","토"};
out.println("오늘은 "+year+"년 "+month+"월 "+date+"일 "+day[day_idx]+"요일입니다.");
out.println("<br><br>");

int start=cal.getMinimum(Calendar.DATE);
int end=cal.getActualMaximum(Calendar.DAY_OF_MONTH);
out.println("이번 달은 "+start+"일부터 시작하여 "+end+"일에 끝납니다.");
out.println("<br><br>");

cal.set(1998,Calendar.FEBRUARY,14);
int startDay=cal.get(Calendar.DAY_OF_WEEK);
year=cal.get(Calendar.YEAR);
month=cal.get(Calendar.MONTH)+1;
date=cal.get(Calendar.DATE);
out.println("내 생일 "+year+"년 "+month+"월 "+date+"일은 "+day[startDay]+"요일입니다.");
%>

</body>
</html>