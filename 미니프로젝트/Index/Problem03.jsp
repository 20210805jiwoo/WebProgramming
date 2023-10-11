<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="pro03.*" %>

<!DOCTYPE html>
<html>
<head>
<style>
	body{ text-align : center }
</style>
<meta charset="UTF-8">
<title>시간표 작성</title>
<style>
* {
	padding: 0;
	margin: 20;
}

h1 {
	text-align: center;
	font-size: 19px;
}

table {
	border: 1px solid #000;
	width: 500px;
	margin-left: auto;
	margin-right: auto;
	empty-cells: show;
	border-collapse: collapse;
}

td {
	border: 1px solid #000;
	width: 180px;
	height: 50px;
	text-align: center;
	vertical-align: middle;
	font-size: 12px;
}

th {
	border: 1px solid #000;
	width: 180px;
	height: 50px;
	font-size: 20px;
}

#a {
	background-color: #fae197;
}

#b {
	background-color: #b7cbfb;
}

#c {
	background-color: #bdbdbd;
}
</style>
</head>
<body>

<div align="center">
	<form method="post" action="Problem03.jsp">
	과목타입:
	<select name="type">
		<option value="0">전공필수</option>
		<option value="1">전공선택</option>
		<option value="2">교양</option>
		<option value="3">자유선택</option>
	</select>
	
	과목명:
	<select name="title">
		<option value="0">웹프로그래밍</option>
		<option value="1">운영체제</option>
		<option value="2">소프트웨어프로그래밍</option>
		<option value="3">데이터베이스개론</option>
		<option value="4">자료구조</option>
		<option value="5">네트워크</option>
		<option value="6">창의와감성</option>
		<option value="7">사회봉사</option>
	</select>
	
	요일:
	<select name="day">
		<option value="0">월</option>
		<option value="1">화</option>
		<option value="2">수</option>
		<option value="3">목</option>
		<option value="4">금</option>
	</select>
	
	시간:
	<select name="time">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
		<option value="5">5</option>
		<option value="6">6</option>
	</select>
	
	연강여부:
	<select name="consecutive">
		<option value="1">1</option>
		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
	</select>
	&nbsp; &nbsp;&nbsp;
	<input type="submit" value="등록">
	<hr>
	</form>
</div>

	<h1>강의 시간표</h1>
	<table>
		<tr>
			<th>2학년</th>
			<th>월</th>
			<th>화</th>
			<th>수</th>
			<th>목</th>
			<th>금</th>
		</tr>
		<tr>
			<th>1</th>
			<%
			for (int i = 0; i < 5; i++) {
				out.print(" <td></td>");
			}
			%>

		</tr>
		<tr>
			<th>2</th>
			<%
			for (int i = 0; i < 5; i++) {
				out.print(" <td></td>");
			}
			%>
		</tr>
		<tr>
			<th>3</th>
			<%
			for (int i = 0; i < 5; i++) {
				out.print(" <td></td>");
			}
			%>
		</tr>
		<tr>
			<th>4</th>
			<%
			for (int i = 0; i < 5; i++) {
				out.print(" <td></td>");
			}
			%>
		</tr>
		<tr>
			<th>5</th>
			<%
			for (int i = 0; i < 5; i++) {
				out.print(" <td></td>");
			}
			%>
		</tr>
		<tr>
			<th>6</th>
			<%
			for (int i = 0; i < 5; i++) {
				out.print(" <td></td>");
			}
			%>
		</tr>
	</table>
	<br>
<jsp:useBean id="lec" class="pro03.LectureBean" />
<jsp:setProperty name="lec" property="*"/>
<jsp:useBean id="al" class="pro03.LectureManager" scope="application" />

	<%
	int type = lec.getType();
	int title = lec.getTitle();
	int day = lec.getDay();
	int time = lec.getTime();
	int consecutive = lec.getConsecutive();
	if (time != 0) {
		al.add(lec);

		for (LectureBean lb : al.getLectureList()) {
			out.println(lb.toString());
		}
		al.buildMatrix();
	}
	%>
</body>
</html>