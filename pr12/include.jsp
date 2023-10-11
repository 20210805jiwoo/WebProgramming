<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice 12</title>
<style>
.main{border:0px}
</style>
</head>
<body>
<div align="center">
<h2>include 지시어 연습</h2>
<hr>
<p>
<table class="main" border=0 cellpadding=5 cellspacing=1>
<tr class="main">
<td class="main"><%@ include file="calendar.jsp" %></td>
<td class="main"><%@ include file="news.jsp" %></td>
</tr>
</table>
</div>
</body>
</html>