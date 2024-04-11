<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//	세션을 이용하여 인증되지 않은 사람들을 login 페이지로 리다이렉트.
	if(session.getAttribute("user_id") == null){
		response.sendRedirect("login.jsp");
	}
	
	String id = (String)session.getAttribute("user_id");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Mypage.jsp</title>
	</head>
	<body>
		<h2><%=id %>님 환영합니다.</h2>
		<a href="logout.jsp">로그아웃</a>
		<%--modify : DB에 값을 vo로 불러와야함. --%>
		<a href="modify_ok.jsp">정보 수정</a>
		
		<a href="delete_ok.jsp">회원 탈퇴</a>
	</body>
</html>