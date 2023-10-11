<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="pr34.*"%>
<jsp:useBean id="calc" class="pr34.Calculator" scope="page" />
<jsp:setProperty name="calc" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
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
<body>
	<form method="post" action="calc_result.jsp" >
		<table>
			<tr>
				<th colspan="2" style="background-color: #66c9f9">CalCuLaTor</th>
			</tr>
			<tr>
				<td><img src="pr34_image/cal.jpg" style="vertical-align: middle"></td>
				<td><input type=text style="text-align:center; width:85px;" name="op1" value = <%=calc.getOp1()%> readonly><br><br>
				<%= calc.getOperator()%>
				<br><br>
				<input type=text style="text-align:center; width:85px;" name="op2" value = <%=calc.getOp2()%> readonly><br>
				<br>=<br><br>
				<input type=text style="text-align:center; width:85px;" name="operator" value = <%=calc.calc()%> readonly></td>
			</tr>
			<tr>
				<th colspan="2" style="background-color: #66c9f9"></th>
			</tr>
		</table>
	</form>
</body>
</head>
</html>