<%@ tag language="java" body-content="scriptless"
	pageEncoding="UTF-8"%>
<%@ attribute name="color"%>
<%@ attribute name="brd"%>
<jsp:useBean id="login" class="pr38.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*" />
<h2><jsp:doBody /></h2>
<div>
	<table bgcolor="${color}" border="${brd}" width="320" height="300">
		<tr>
   <td>이름 : </td>
   <td><%=login.getId() %></td>
</tr>
<tr>
   <td>패스워드 :</td> 
   <td><%=login.getPw() %></td>
</tr>
<tr>   
   <td>이메일 :</td>
   <td><%=login.getEmail() %></td>
</tr>
<tr>
   <td>성별 : </td>
   <td><%=login.getGender() %></td>
</tr>
<tr>
   <td>생일 : </td>
   <td><%=login.getBirth() %></td>
</tr>

		<tr>
		<td colspan="2">
		<%=login.getId()%>씨는 
		<%
		String gender;
		if (login.getGender() == 0) {
			out.print("남성");
		} else
			out.print("여성");
		%>이고, 
		<%
		if (login.isGrownUp())
			out.print("성인입니다.");
		else
			out.print("성인이 아닙니다.");
		%>
		</td>
		</tr>
	</table>
</div>