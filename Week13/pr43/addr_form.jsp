<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h2>주소록 등록</h2>
		<hr>
		<form name=form1 method="post" action="addr_add.jsp">
			<table border=1 cellspacing="1" cellpadding="6">
				<tr>
					<td>이름</td>
					<td><input type=text size=20 name="username"></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type=text size=20 name="tel"></td>
				</tr>
				<tr>
					<td>이메일</td>
					<td><input type=text size=20 name="email"></td>
				</tr>
				<tr>
					<td>성별</td>
					<td><select name="gender">
							<option selected>여</option>
							<option>남</option>
					</select></td>
				</tr>
				<tr>
					<td>그룹</td>
					<td><select name="group">
							<option selected>친구</option>
							<option>가족</option>
							<option>직장</option>
					</select></td>
				</tr>
				<tr><td colspan=2 align=center>
				<input type=submit value="확인">
				<input type=button value="취소">
				</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>