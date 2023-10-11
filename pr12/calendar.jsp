<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calendar.jsp</title>
<style type="text/css">
   table, td{
   border: solid 1px gray;
   border-collapse: collapse;
   }
   td{
   width: 335px;
   height: 45px;
   text-align: center;
   }
   ul{
   text-align: left;
   }
</style>
</head>
<body>
<%
   out.println("<div align=\"center\">");
   out.println("<br>");
   out.println("<table>");
   out.println("<tr>");
   out.println("<td><font color=\"red\">일</font></td>");
   for(int i=0; i<5; i++){
      out.println("<td>");
      switch(i){
      case 0:
         out.println("월");
         break;
      case 1:
         out.println("화");
         break;
      case 2:
         out.println("수");
         break;
      case 3:
         out.println("목");
         break;
      case 4:
         out.println("금");
      }
      
      out.println("</td>");
   }
   out.println("<td><font color=\"blue\">토</font></td>");
   out.println("</tr>");
   
   for(int i=0; i<4; i++){
      out.println("<tr>");
      for(int j=0; j<7; j++)
         out.println("<td> &nbsp; </td>");
      out.println("</tr>");
   }
   out.println("</table>");
   out.println("</div>");
%>
</body>
</html>