<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Enumeration"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request 결과</title>
</head>
<body>
	<%! 
		String[] mChoice = {"hobby"};
		String[] hobbyNames = {"뉴스", "맛집", "책", "영화", "여행"};
		String[] telCompany = {"010", "011", "017", "070"};
		String[] gNames = {"남", "여"};	
		
		boolean isMultipleChoice(String paramName)
		{
			for(int i=0; i<mChoice.length; i++)
				if(paramName.compareTo(mChoice[i]) == 0)
					return true;
			return false;
		}
	%>
	<%
		Enumeration<String> e = request.getParameterNames();
		while (e.hasMoreElements()) {
			String s = e.nextElement();
			if(isMultipleChoice(s)){
				String[] a = request.getParameterValues(s);
				out.println(s + " : ");
				for(int i = 0; i < a.length; i++)
					out.println(a[i] + "/");
				out.println("<br>");
			}
			else
				out.println(s + " : " + request.getParameter(s) + "<br>");
		}
	%>
	<hr>
	<h2>Processing Parameters</h2>
	<%
		Enumeration<String> r = request.getParameterNames();
		while (r.hasMoreElements()) {
			String s = r.nextElement();
			if(s.compareTo("gen")== 0)
				out.println(s + " : " + gNames[Integer.valueOf(request.getParameter(s))] + "<br>");
			else if(s.compareTo("phone1")==0)
				out.println(s + " : " + telCompany[Integer.valueOf(request.getParameter(s))] + "<br>");
			else if(isMultipleChoice(s)){
				String[] a = request.getParameterValues(s);
				out.println(s + " : ");
				for(int i = 0; i<a.length; i++)
					out.println(hobbyNames[Integer.valueOf(a[i])] + "/");
				out.println("<br>");
			}
			else
				out.println(s + " : " + request.getParameter(s) + "<br>");
		}
	%>
</body>
</html>