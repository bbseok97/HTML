<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");
	double avg = (double)request.getAttribute("avg"); 
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>score_ex03.jsp</title>
	</head>
	<body>
		<%=name %>님 평균 <%=avg %>점 합격 		
	</body>
</html>