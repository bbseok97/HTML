<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>forward_ex03.jsp</title>
	</head>
	<body>
		전달받은 아이디<%=id %><br>
		전달받은 비밀번호<%=pw %><br>
	</body>
</html>