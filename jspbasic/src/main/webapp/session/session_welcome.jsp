<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("user_id");
	String nick = (String)session.getAttribute("user_name");
	
	if(session.getAttribute("user_id") == null){
		response.sendRedirect("session_login.jsp");
	}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_welcome.jsp</title>
	</head>
	<body>
		아이디 : <%=id %>(<%=nick %>)님 환영합니다.<br>
		<a href="session_logout.jsp">로그아웃</a>
	</body>
</html>