<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
		세션은 쿠키와 마찬가지로 인증정보를 유지하기 위해서 사용하는 JSP 내장 객체
		setAttribute("세션이름", "값")으로 저장
	*/
	
	//	session 설정
	session.setAttribute("id", "kkk123");
	session.setAttribute("name", "홍길동");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_set.jsp</title>	
	</head>
	<body>
	
	</body>
</html>