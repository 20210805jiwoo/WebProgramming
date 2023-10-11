<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%!
	int sat, sun;
	public String parseDay(int cnt, String day){
		if(day == "토"){
			sat = cnt;
			return "<font color='blue'>토</font>";
		}
		if (day == "일"){
			sun = cnt;
			return "<font color='red'>일</font>";
		}
		if ((cnt-sat)%7==0)
			return "<font color='blue'>"+day+"</font>";
		if ((cnt-sun)%7==0)
			return "<font color='red'>"+day+"</font>";
		else
			return day;
		
	}
%>
<title>calendar.jsp</title>
<style>
	div {
		text-align: center;
		width : 70%;
		margin: auto;
	}
	div.date {
		height : 38px;
		text-align:right;
		margin-top : 2%;
		width:65%;
	}
	table,td{ 
		border-collapse: collapse; 
		border: solid black 1px; 
	}
	table {
		margin: auto;
		text-align :center;
		width:70%;
		height:250px;
	}
	
</style>
<body>
<%
	Calendar today = Calendar.getInstance();	
	Calendar cal = Calendar.getInstance();
    int year = today.get(Calendar.YEAR);
    int month = today.get(Calendar.MONTH);
    int date = today.get(Calendar.DATE);
    
    cal.set(year, month, 1);

    int count = 0;
    String[] days = {"일", "월", "화", "수", "목", "금", "토"};
    
    int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
    int start = cal.getMinimum(Calendar.DATE);
	int end = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	int startDay = cal.get(Calendar.DAY_OF_WEEK);
    
	out.println("<div>");
    out.println("<div class=\"date\">");
    out.println("<h4>"+year+"-"+(month+1)+"-"+date+"</h4>");
    out.println("</div>");
    
    
    out.println("<table>");
    out.println("<tr>");
    for(int i=0; i<7;i++){
    	out.print("<td>");
    	out.print(parseDay(count, days[i]));
    	out.print("</td>");
    	count++;
    }
    out.println("</tr>");
	for(int i=start;i<end+startDay-1;){
		if(count%7==0)
			out.println("<tr>");
		if(i==1){
			for(int k=0;k<startDay-1;k++){
				out.println("<td>&nbsp</td>");
				count++;
			}
		}
		if(i<=end){
			out.print("<td>");
			out.print(parseDay(count, String.valueOf(i)));
			out.println("</td>");
			i++;
			count++;
		}
		if(i>end){
			out.println("<td>&nbsp</td>");
			i++;
			count++;
			if(count%7==0)
				return;
		}
		
		if(count%7==0)
			out.println("</tr>");
		
	}
	
	out.println("</table>");
	out.println("</div>");
%>
</body>

