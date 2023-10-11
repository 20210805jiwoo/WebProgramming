<!-- 컴퓨터학과 20210805 이지우 -->
<!-- chrome 기준 작성 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<style>
table {
	border: 1px solid #828282;
	width: 475px;
	margin-left: auto;
	margin-right: auto;
	empty-cells: show;
	border-collapse: collapse;
}

td {
	border: 1px solid #828282;
	width: 200px;
	height: 20px;
	text-align: left;
	vertical-align: middle;
}

th {
	background-color: #ececec;
	border: 1px solid #828282;
	width: 70px;
}
</style>
</head>
<body>
	<center>
		<img src="pr33_image/eclass_title.jpg">
	</center>
	<form name=form1 method="post" action="register.jsp">
		<table>
			<tr>
				<th colspan="2"><b>회원가입</b></th>
			</tr>
			<tr>
				<th>아이디</th>
				<td>
				<input type="text" name="id" size="9px"> 
				<input type="image" name="id" src="pr33_image/check.gif" style="vertical-align: middle">
				</td>
			</tr>
			<tr>
				<th>패스워드</th>
				<td colspan="2"><input type="password" name="pw" size="9px"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td colspan="2">
				<input type="radio" name="gender" value="0">남
				<input type="radio" name="gender" value="1" checked>여
				</td>
			</tr>
			<tr>
				<th>국적</th>
				<td colspan="2">
				<input type="text" value="대한민국" size="18px">
				<input type="button" value="국적변경" disabled>
				</td>
			</tr>
			<tr>
				<th>휴대폰</th>
				<td colspan="2">
				<select name="phone1">
						<option value="0" selected>010</option>
						<option value="1">011</option>
						<option value="2">017</option>
						<option value="3">070</option>
				</select>
				 - <input type="text" name="phone2" size="5px"> 
				 - <input type="text" name="phone3" size="5px">
				 </td>
			</tr>
			<tr>
				<th>이메일</th>
				<td colspan="2"><input type="text" name="email" size="38px"></td>
			</tr>
			<tr>
				<th>생일</th>
				<td colspan="2"><input type="date" name="birth" value="연도-월-일"
					size="13px"></td>
			</tr>
			<tr>
				<th>관심분야</th>
				<td colspan="2">
				<input type="checkbox" name="hobby" value="0">뉴스
				<input type="checkbox" name="hobby" value="1" checked>맛집
				<input type="checkbox" name="hobby" value="2">책
				<input type="checkbox" name="hobby" value="3">영화
				<input type="checkbox" name="hobby" value="4">여행
				</td>
			</tr>
			<tr>
				<th id="hi">가입인사</th>
				<td colspan="2"><textarea rows="5" cols="57" name="memo">회원들에게 간단한 가입인사를 남겨주세요</textarea>
				</td>
			<tr>
				<th>증명사진</th>
				<td colspan="2"><input type="file"></td>
			</tr>
			<tr>
				<th colspan="2">
				<input type="submit" value="가입하기"> 
				<input type="reset" value="다시작성">
				</th>
			</tr>
		</table>
	</form>
	</body>
</html>