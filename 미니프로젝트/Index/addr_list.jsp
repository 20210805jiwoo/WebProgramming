<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="pro01.*"%>

<jsp:useBean id="am" class="pro01.AddrManager" scope="application" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addr_list.jsp</title>
<style>
table.table2 {
	height: 30px;
	align: center;
}
</style>
</head>
<body>
	<div style="text-align: center;">
		<h2>주소록(전체보기)</h2>
		<hr>
		<a href="addr_form.jsp">주소추가</a>
		<p>
			<%
			String sindex = request.getParameter("sindex"); //매개변수 현재 페이지
			//currentPage 현재 페이지 정하기
			if (sindex == null) {
				sindex = "1";
			}
			int i;
			int currentPage = Integer.parseInt(sindex); //String->integer
			int rpp = 2; //한 페이지에 들어갈 데이터 수
			int startIndex = rpp * currentPage - (rpp - 1);
			int lastIndex = rpp * currentPage;
			int allpage = am.getAddrList().size() / rpp; //전체 페이지 개수 계산
			allpage++;
			%>
		
		<table border=1 style="width: 570px;" align="center">
			<tr>
				<td>이름</td>
				<td>전화번호</td>
				<td>이메일</td>
				<td>성별</td>
				<td>그룹</td>
			</tr>
			<%
			for (AddrBean ab : am.getAddrList()) {
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
			%>
			<div>
				<a href="addr_list_group.jsp?sindex=1"> 1 </a> <a
					href="addr_list_group.jsp?sindex=2"> 2 </a>
			</div>
		</table>
	</div>
</body>
</html>
