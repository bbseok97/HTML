<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>testcontroller.jsp</title>
	</head>
	<body>
	<!-- 실제 폴더 경로에 맞춰서 URL 주소를 사용하는 것이 더 좋다. -->
		<a href="join.test">회원가입 요청</a>	<%--상대 경로 --%>
		<a href="login.test">로그인 요청</a>
		<a href="/myweb/controller/update.test">수정 요청</a> <%--절대 경로 --%>
		<a href="/myweb/controller/delete.test">삭제 요청</a>
	</body>
</html>