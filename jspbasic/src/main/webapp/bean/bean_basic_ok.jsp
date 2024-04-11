<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// post 방식으로 받기때문에 생략 불가
	request.setCharacterEncoding("utf-8");
	

	/*	생략 가능.
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	*/
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>bean_basic_ok.jsp</title>
	</head>
	<body>
		<%--클래스의 멤버 변수명과 파라미터명이 같아야 setProperty에서 "*"로 자동입력이 가능하다 --%>
		<jsp:useBean id="u1" class="com.bean.User" scope="page"/>
		<jsp:setProperty property="*" name="u1"/>
		<%--id: 객체 이름(사용할 변수명) 
			class : 실제 경로
			scope : bean의 사용 범위
		--%>
		
		<%--setProperty는 setter 메서드를 사용 --%>
		
		<%--getProperty는 getter 메서드를 사용 --%>
		<jsp:getProperty property="id" name="u1"/><br>
		<jsp:getProperty property="pw" name="u1"/><br>
		<jsp:getProperty property="name" name="u1"/><br>
		<jsp:getProperty property="email" name="u1"/><br>
		
		<%--
			property = "멤버변수명" name="사용할 bean 객체명" value="결과값"
		 
		<jsp:setProperty property="id" name="u1" value="<%=id %>"/>
		<jsp:setProperty property="pw" name="u1" value="<%=pw %>"/>
		<jsp:setProperty property="name" name="u1" value="<%=name %>"/>
		<jsp:setProperty property="email" name="u1" value="<%=email %>"/>
		--%>
	</body>
</html>