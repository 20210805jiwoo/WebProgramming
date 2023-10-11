<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String task1=request.getParameter("TASK1");
    String task2=request.getParameter("TASK2");

    if( task1 == "" )
        task1="일정 없음";
    if( task2 == "")
        task2="일정 없음";
    out.println("<div style=\"text-align:center; font-size:30px\">오늘의 일정</div>");
    out.println("<hr>");
    out.println("<ol>");
    out.println("<li>"+task1+"</li>");
    out.println("<li>"+task2+"</li>");
    out.println("</ol>");

%>