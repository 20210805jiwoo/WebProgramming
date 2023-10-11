<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="pr33.*"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="login" class="pr33.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register.jsp</title>
</head>
<body>
	<div align="center">
		<h2>등록내용</h2>
		이름 :
		<jsp:getProperty property="id" name="login" /><p>
			패스워드 :
			<%=login.getPw()%>
		<p>
			이메일 :
			<%=login.getEmail()%>
		<p>
			성별 :
			<%=login.getGender()%>
		<p>
			생일 :
			<%=login.getBirth()%>
		<hr>
		<jsp:getProperty property="id" name="login" />씨는

		<%
		String gender;
		if (login.getGender()==0) {
			out.print("남자");
		} else
			out.print("여자");
		%>이고,
		<%
		if (login.isGrownUp())
			out.print("성인입니다.");
		else
			out.print("성인이 아닙니다.");
		%>
	</div>
</body>
</html>
