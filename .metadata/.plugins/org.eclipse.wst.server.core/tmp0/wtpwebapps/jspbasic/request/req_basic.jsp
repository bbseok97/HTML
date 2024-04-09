<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//request 객체에는 브라우저에 대한 정보, 사용자가 전달하는 많은 정보를 자동으로 저장
	StringBuffer url = request.getRequestURL();	//요청 정보에 대한 URL 정보를 불러옴.
	String uri = request.getRequestURI();
	String path = request.getContextPath();
	String query = request.getQueryString();
	String address = request.getRemoteAddr();

%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>req_basic.jsp</title>
	</head>
	<body>
		url 주소 : <%=url %><br>
		uri 주소 : <%=uri %><br>
		context 주소 : <%=path %><br>
		query 값 : <%=query %><br>
		접속 경로 : <%=address %><br>
	</body>
</html>