<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
<%! 


%>
	<%
	int result = 0;

	int n1 = Integer.parseInt(request.getParameter("num1"));
	int n2 = Integer.parseInt(request.getParameter("num2"));

	switch (request.getParameter("op")) {
	case "+":
		result = n1 + n2;
		break;
	case "-":
		result = n1 - n2;
		break;
	case "*":
		result = n1 * n2;
		break;
	case "/":
		result = n1 / n2;
		break;
	}
	%>
	<style>
table {
	height: 250px;
	margin-left: auto;
	margin-right: auto;
	empty-cells: show;
}

td {
	border: 1px solid #e8e8e8;
	width: 180px;
	text-align: center;
	vertical-align: middle;
}

th {
	height: 50px;
	font-size: 36px;
}
</style>
		<table>
			<tr>
				<th colspan="2" style="background-color: #66c9f9">CalCuLaTor</th>
			</tr>
			<tr>
				<td><img src="pr24_image/cal.jpg"
					style="vertical-align: middle"></td>
				<td><input type=text style="text-align: center; width: 85px;"
					name="num1" value=<%=request.getParameter("num1") %> readonly><br>
				<br> 
				<%= request.getParameter("op") %>
				 <br>
				<br> <input type=text style="text-align: center; width: 85px;"
					name="num2" value=<%=request.getParameter("num2") %> readonly><br>
				<br>=<br>
				<br> <input type=text style="text-align: center; width: 85px;" name="result" value=<%=result%> readonly></td>
			</tr>
			<tr>
				<th colspan="2" style="background-color: #66c9f9"></th>
			</tr>
		</table>
	</form>
</body>
</html>