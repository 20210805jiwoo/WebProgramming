<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="ddwutag"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<style>
*{text-align:center;}
table{margin:auto;}
</style>
<meta charset="UTF-8">
<title>Pracitce38</title>
</head>
<body>
	<div align="center">
		<ddwutag:printTable brd="2" color="pink">회원정보</ddwutag:printTable>
		<ddwutag:printTable brd="0" color="yellow">입력한 내용</ddwutag:printTable>
	</div>
</body>
</html>