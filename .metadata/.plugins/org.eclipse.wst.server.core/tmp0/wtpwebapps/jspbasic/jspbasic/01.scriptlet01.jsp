<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
		//	모든 자바 코드를 기술할 수 있음 스크립트릿(scriptlet)
		int a = 10;
		if(a >= 10){
			out.println("안녕하세요<br>");
			out.println("<b>반가워요</b>");
		}
		%>
	</body>
</html>