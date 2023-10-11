<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice.jsp</title>
</head>
<body>
<head>

<title>오류 메시지</title>
<style>
table {
	width: 500;
	height: 200;
	margin-left: auto;
	margin-right: auto;
	empty-cells: show;
	border-collapse: separate;
}

td {
	width: 600px;
	height: 300px;
	text-align: center;
	vertical-align: middle;
	font-size: 15px;
}

th {
	width: 600px;
	height: 35px;
	text-align: center;
	font-size: 15px;
}
</style>
</head>
<body>
	<center>
		<img src="pr13_image/eclass_title.jpg">
	</center>
	<table>
		<tr>
			<th colspan="2" style="background-color: #f9dbbd"><b>오류가
					발생했습니다</b></th>
		</tr>
		<tr>
			<td colspan="2" style="background-color: #fcf0d8"><img
				src="pr13_image/flower.gif"></br></br> 
				오류발생시간 : <%= new java.util.Date ()%></br></br>
				<b>최대한	빨리 조치하겠습니다.</b></td>
		</tr>
	</table>
	
</body>
</html>