<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="color" %>
<font color="${color}">
<%=request.getParameter("username") %>님 환영합니다!!<br>
</font>