<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
		세션에 저장된 값은 브라우저가 종료되기까지, 또는 기본 시간 30분까지
		어느 페이지에서나 사용가능합니다.
		getAttrubute("세션이름") 메서드를 사용
	*/
	
	String id = (String)session.getAttribute("id");	
	//	데이터 타입이 Object로 저장되어 있어 타입캐스팅을 해줘야 한다.
	String name = (String)session.getAttribute("name");
	
	//	세션 유지시간 확인
	int time = session.getMaxInactiveInterval();		//기본시간 1800s(30분)
	
	//	세션 유지시간 변경
	session.setMaxInactiveInterval(3600);				//3600(1시간)으로 변경
	int time2 = session.getMaxInactiveInterval();
	
	//	특정 세션 삭제
	session.removeAttribute("id");
	
	//	모든 세션 삭제
	session.invalidate();
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session_get.jsp</title>
	</head>
	<body>
		아이디 : <%=id %><br>
		이름 : <%=name %><br>
		유지시간(처음) :<%=time %><br>
		유지시간(변경) : <%=time2 %><br>
	</body>
</html>