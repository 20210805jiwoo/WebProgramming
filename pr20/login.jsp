<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이클래스 로그인</title>
<style>
table {
	width: 740px;
	margin-left: auto;
	margin-right: auto;
	empty-cells: show;
	border-collapse: collapse;
}

td {
	width: 180px;
	height: 40px;
	text-align: left;
	vertical-align: middle;
	font-size: 12px;
}

hr {
	border: 0;
	width: 58%;
	height: 1px;
	background: #727272;
}

h1 {
	font-size: 24px;
}

h4 {
	text-align: right;
}

select {
	position: relative;
	top: 0px;
	right: 70px;
}
</style>
</head>
<body>
</head>
<body>
	<center>
		<img src="pr20_image/eclass_title.jpg">
		<h1>로그인</h1>
	</center>
	<hr>
	<form name="frm1" action="result.jsp" method="post">
		<table>
			<tr>
				<center>
					<td rowspan="5"><img src="pr20_image/eclass_logo.png"
						style="max-width: 100%"></td>
				</center>
				<td><b>회원님의 아이디와 비밀번호를 정확히 입력하세요.</b></td>
			</tr>
			<tr>
				<td>
					<center>
						<select name="type" id="group">
							<option value="학부생" selected>학부생</option>
							<option value="대학원생">대학원생</option>
							<option value="교직원">교직원</option>
						</select>
					</center>
				</td>
			</tr>
			<tr>
				<td><b>아이디</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="text" name="strID" size="17px"
					style="background-color: #FFFFA6;"></td>
			</tr>
			<tr>
				<td><b>비밀번호</b> &nbsp;&nbsp;&nbsp;&nbsp; <input type="password"
					name="strPwd" size="17px" style="background-color: #FFFFA6;">
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인"> <input
					type="button" value="가입하기"></td>
			</tr>

		</table>
	</form>
</body>
</html>
</body>
</html>