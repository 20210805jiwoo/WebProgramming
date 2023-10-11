<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="pro01.*"%>
<%request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="addr" class="pr32.AddrBean" />
<jsp:setProperty name="addr" property="*" />
<jsp:useBean id="am" class="pr32.AddrManager" scope="application" />
<%
am.add(addr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch07 : addr_add.jsp</title>
</head>
<body>
	<div align="center">
		<h2>등록내용</h2>
		이름 :
		<jsp:getProperty property="username" name="addr" /><p>
			전화번호 : <%=addr.getTel()%><p>
			이메일 : <%=addr.getEmail()%><p>
			성별 : <%=addr.getGender()%><p>
			그룹 : <%=addr.getGroup()%><p>
		<hr>
		<a href="addr_list.jsp">전체 목록 보기</a> &nbsp; &nbsp; &nbsp; &nbsp; <a
			href="addr_list_group.jsp">그룹별 목록 보기</a>
	</div>
</body>
</html>