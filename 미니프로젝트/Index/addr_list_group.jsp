<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="pro01.*"%>
<jsp:useBean id="am" class="pro01.AddrManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list_group.jsp</title>
</head>
<body>
	<div style="text-align: center";>
		<h2>주소록(그룹별 보기)</h2>
		<hr>
		<a href="addr_form.jsp">주소추가</a>
		<p>
		<table border=1 style="width: 560px;" align="center">
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
				<td>그룹</td>
			</tr>

			<%
			for (AddrBean ab : am.getAddrList()) {
				if ((ab.getGroup()).equals("가족")) {
			%>
			<tr>
				<td><%=ab.getUsername()%></td>
				<td><%=ab.getTel()%></td>
				<td><%=ab.getEmail()%></td>
				<td><%=ab.getGender()%></td>
				<td><%=ab.getGroup()%></td>
			</tr>
			<%
			}
			}
			%>
			<%
			for (AddrBean ab : am.getAddrList()) {
				if ((ab.getGroup()).equals("친구")) {
			%>
			<tr>
				<td><%=ab.getUsername()%></td>
				<td><%=ab.getTel()%></td>
				<td><%=ab.getEmail()%></td>
				<td><%=ab.getGender()%></td>
				<td><%=ab.getGroup()%></td>
			</tr>
			<%
			}
			}
			%>
			<%
			for (AddrBean ab : am.getAddrList()) {
				if ((ab.getGroup()).equals("직장")) {
			%>
			<tr>
				<td><%=ab.getUsername()%></td>
				<td><%=ab.getTel()%></td>
				<td><%=ab.getEmail()%></td>
				<td><%=ab.getGender()%></td>
				<td><%=ab.getGroup()%></td>
			</tr>
			<%
			}
			}
			%>
		</table>
	</div>
</body>
</html>