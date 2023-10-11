<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시간표 작성</title>
</head>
<body>
<center>
   <%
   String[] typeNames = { "전공필수", "전공선택", "교양", "자유선택" };
   String[] titleNames = { "웹프로그래밍", "운영체제", "소프트웨어프로그래밍", "데이터베이스개론", "자료구조", "네트워크", "창의와감성", "사회봉사" };
   String[] days = { "월", "화", "수", "목", "금" };

   out.print("<form method=post action=\"Practice30.jsp\">");
   out.print("과목타입: <select name=\"lectureType\">");
   for (int i = 0; i < typeNames.length; i++)
      if (i == 0)
         out.print("<option selected value=\"" + i + "\">" + typeNames[i] + "</option>");
      else
         out.print("<option value=\"" + i + "\">" + typeNames[i] + "</option>");
   out.print("</select>");

   out.print(" 과목명: <select name=\"lectureTitle\">");
   for (int i = 0; i < titleNames.length; i++)
      if (i == 0)
         out.print("<option selected value=\"" + i + "\">" + titleNames[i] + "</option>");
      else
         out.print("<option value=\"" + i + "\">" + titleNames[i] + "</option>");
   out.print("</select>");

   out.print(" 요일: <select name=\"day\">");
   for (int i = 0; i < days.length; i++)
      if (i == 0)
         out.print("<option selected value=\"" + i + "\">" + days[i] + "</option>");
      else
         out.print("<option value=\"" + i + "\">" + days[i] + "</option>");
   out.print("</select>");

   out.print(" 시간: <select name=\"time\">");
   for (int i = 0; i < 6; i++)
      if (i == 0)
         out.print("<option selected value=\"" + (i + 1) + "\">" + (i + 1) + "</option>");
      else
         out.print("<option value=\"" + (i + 1) + "\">" + (i + 1) + "</option>");
   out.print("</select>");

   out.print(" 연강여부: <select name=\"consecutive\">");
   for (int i = 0; i < 4; i++)
      if (i == 0)
         out.print("<option selected value=\"" + (i + 1) + "\">" + (i + 1) + "</option>");
      else
         out.print("<option value=\"" + (i + 1) + "\">" + (i + 1) + "</option>");
   out.print("</select>");

   out.print("&nbsp &nbsp&nbsp <input type=submit value=\"등록\">");
   out.print("</form><hr>");

   ArrayList<String> list = (ArrayList<String>) session.getAttribute("timetable");

   if (request.getParameter("lectureType") != null || request.getParameter("lectureTitle") != null
         || request.getParameter("day") != null || request.getParameter("time") != null
         || request.getParameter("consecutive") != null) {
      int lectureType = Integer.parseInt(request.getParameter("lectureType"));
      int lectureTitle = Integer.parseInt(request.getParameter("lectureTitle"));
      int day = Integer.parseInt(request.getParameter("day"));

      String s = typeNames[lectureType] + "/" + titleNames[lectureTitle] + "/" + days[day] + "/"
      + request.getParameter("time") + "/" + request.getParameter("consecutive");

      if (list == null)
         list = new ArrayList<String>();

      list.add(s);
      session.setAttribute("timetable", list);

      for (String a : list)
         out.print(a + "<br>");
   }
   %>
   </center>
</body>
</html>